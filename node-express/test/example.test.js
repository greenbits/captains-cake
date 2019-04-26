import request from "supertest";
import app from '../app';

// https://jestjs.io/
// https://github.com/visionmedia/supertest

describe("Integration: /foobar", () => {

  it("should return an example payload on a GET", async () => {
    const response = await request(app)
      .get('/foobar')
      .expect('Content-Type', "application/json; charset=utf-8")
      .expect(200);

    expect(response.body["example"]).toEqual("this is an example payload")
  });

});