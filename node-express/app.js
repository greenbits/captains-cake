import express from "express";
import { getRandomStrainName, toFixedInt, randomNumber } from './lib';

const app = express();

app.post('/order', (req, res) => {
  // Generate a price per gram of ~$5-25.99
  const pricePerGram = randomNumber(5.00, 25.99)

  // Generate an amount bought in grams (1-28)
  const amount = randomNumber(1.00, 28);

  // Round the total price to the nearest 100th
  const total = toFixedInt(pricePerGram * amount, 2);

  // Return a randomly generated order
  return res.json({
    amount,
    pricePerGram,
    strain: getRandomStrainName(),
    total: total,
    unit: "grams",
  });

});


export default app;
