import { promisify } from "util";

import pool from './connection';

export const query = promisify(pool.query.bind(pool));
export default pool;
