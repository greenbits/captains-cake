import { promisify } from "util";

import pool from './connection';

export const query = promisify(pool.query.bind(pool));
export default pool;

const storage = {};

export const saveItem = (name, payload) => {
  if (storage[name] == null) storage[name] = [];

  storage[name].push(payload);

  return Promise.resolve(payload);
}

export const getItems = (name) => {
  return Promise.resolve(storage[name] || []);
}
