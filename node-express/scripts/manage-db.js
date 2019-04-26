import mysql from "mysql";

import { promisify } from 'util';

import dbConfig from '../config/database';

export const connection = mysql.createPool({
  host: dbConfig.host,
  port: dbConfig.port,
  user: dbConfig.user,
});

const query = promisify(connection.query).bind(connection);

async function main() {
  const command = process.argv[2];
  try {
    switch (command) {
      case 'create':
        await query(`CREATE DATABASE IF NOT EXISTS ${dbConfig.database}`);
        console.log(`Database ${dbConfig.database} was successfully created`);
        break;

      case 'delete':
        await query(`DROP DATABASE IF EXISTS ${dbConfig.database}`);
        console.log(`Database ${dbConfig.database} was successfully deleted`);
        break;

      default:
        console.log("Please specify delete or create");
        break;
    }
  } catch (err) {
    console.error("Encountered an error: ", err.stack);
  }

  connection.end();
}


main();
