ENV['APP_ENV'] = 'test'

require 'app'
require 'test/unit'
require 'rack/test'

class OrderTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_returns_a_new_order
    post '/order'
    assert last_response.ok?

    # expect('Content-Type', "application/json; charset=utf-8");
    expect(strainNames).toContain(strain);
    expect(pricePerGram).toBeLessThan(20.99);
    expect(pricePerGram).toBeGreaterThan(5);

    expect(total).toEqual(toFixedInt(amount * pricePerGram, 2));
  end

end