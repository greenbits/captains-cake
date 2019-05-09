import request from "supertest";
import app from '../app';
import strainNames from '../lib/data';

// https://jestjs.io/
// https://github.com/visionmedia/supertest

describe("Integration: /order", () => {
  it("should return an order on POST", async () => {
    const response = await request(app)
      .post('/order')
      .expect(200)
      .expect('Content-Type', "application/json; charset=utf-8");

    expect(strainNames).toContain(response.body["strain"]);

    expect(response.body["price"]).toBeLessThan(21)
    expect(response.body["price"]).toBeGreaterThan(5)
  });
});