import migrations from 'mysql-migrations';

import pool from '../db';

const MIGRATIONS_PATH = `${__dirname}/../db/migrations`

migrations.init(pool, MIGRATIONS_PATH);
