import express from "express";

const app = express();
app.get('/foobar', (req, res) => {
  return res.json({ "example": "this is an example payload" });
});

export default app;