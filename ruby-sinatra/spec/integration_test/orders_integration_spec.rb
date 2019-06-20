require 'spec_helper'
require 'rspec'
require 'rack/test'
require_relative '../../app/lib/strain_data'

describe 'The Captains Cake App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should returns a new order' do
    get '/'
    expect(last_response).to be_ok

    body = last_response.body
    expect(body).to eq('Put this in your pipe & smoke it!')
  end

  it 'should returns a new order' do
    post '/order'
    expect(last_response).to be_ok

    body = JSON.parse(last_response.body, object_class: OpenStruct)

    expect(StrainData::NAMES).to include(body.strain)
    expect(body.price_per_gram).to be <(20.99)
    expect(body.price_per_gram).to be >(5)

    expect(body.total).to eq((body.amount * body.price_per_gram).round(2))
  end
end
