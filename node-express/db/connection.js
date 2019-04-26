import mysql from 'mysql';
import dbConfig from '../config/database';

function handleConnectionErr(err, connection) {
  if (err) {
    switch (err.code) {
      case 'PROTOCOL_CONNECTION_LOST':
          console.error('Database connection was closed.')
          console.error(err.stack)
          break;
      case 'ER_CON_COUNT_ERROR':
          console.error('Database has too many connections.')
          console.error(err.stack)
          break;
      case 'ECONNREFUSED':
          console.error('Database connection was refused.')
          console.error(err.stack)
      default:
        console.error("Unknown Error")
        console.error(err.stack)
    }
  }

  // Release the connection back to the pool
  if (connection) connection.release();
}

const pool = mysql.createPool(dbConfig);

pool.getConnection(handleConnectionErr);

export default pool
