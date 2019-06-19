require 'spec_helper'
require 'rspec'
require 'rack/test'

describe 'The Captains Cake App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should returns a new order' do
    post '/order'
    expect(last_response).to be_ok

    binding.pry
    body = OpenStruct.new(last_response.body)

    # expect('Content-Type', "application/json; charset=utf-8");
    expect(body.strain_names).toContain(strain);
    expect(body.pricePerGram).toBeLessThan(20.99);
    expect(body.pricePerGram).toBeGreaterThan(5);

    # expect(total).toEqual(toFixedInt(amount * pricePerGram, 2));
  end
end
