class App < Sinatra::Application

  get '/foobar' do
    'Put this in your pipe & smoke it!'
  end

  post '/order' do
    binding.pry
    # Generate a price per gram of ~$5-25.99
    price_per_gram = random_number(5.00, 25.99)

    # Generate an amount bought in grams (1-28)
    amount = random_number(1.00, 28)

    # Round the total price to the nearest 100th
    total = to_fixed_int(pricePerGram * amount, 2).to_i

    responseObj = {
      amount: amount,
      price_per_gram: price_per_gram,
      strain: get_random_strain_name,
      total: total,
      unit: "grams"
    }

    responseObj.to_json
  end
end
