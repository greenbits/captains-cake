import express from "express";
import { getRandomStrainName, toFixedInt } from './lib';

const app = express();

app.post('/order', (req, res) => {
  // Generate a price per gram of ~$5-20
  const basePrice = Math.random() * 100 / 5 + 4

  // Round it to the nearest 100th
  const randomPrice = toFixedInt(basePrice, 2);

  // Return a randomly generated order
  return res.json({
    strain: getRandomStrainName(),
    price: randomPrice,
  });
});



export default app;
