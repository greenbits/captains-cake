get '/foobar' do
  'Put this in your pipe & smoke it!'
end

post '/order' do
  binding.pry
  # Generate a price per gram of ~$5-25.99
  pricePerGram = randomNumber(5.00, 25.99)

  # Generate an amount bought in grams (1-28)
  amount = randomNumber(1.00, 28)

  # Round the total price to the nearest 100th
  total = (pricePerGram * amount, 2).to_i

  responseObj = {
    amount: amount,
    price_per_gram: pricePerGram,
    strain: getRandomStrainName(),
    total: total,
    unit: "grams"
  }

  responseObj.to_json
end
