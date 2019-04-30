# Captain's Cake: Node + ExpressJs

https://expressjs.com/

## Setting up
Create & migrate the database:
```bash
$ yarn db:create && yarn db:migrate
```

### Creating a Migration
This project makes use of [mysql-migrations](https://www.npmjs.com/package/mysql-migrations). You can add a migration by running:

```bash
$ yarn db:migrate add migration create_table_example "CREATE TABLE example (user_id INT NOT NULL, UNIQUE KEY user_id (user_id), name TEXT )"
```


### Executing Migrations

1) `yarn db:migrate up` Runs all the pending up migrations.
2) `yarn db:migrate up 2`  Runs 2 pending up migrations from the last position.
3) `yarn db:migrate down`  Runs only 1 down migrations.
3) `yarn db:migrate refresh`  Runs all down migrations followed by all up.

### Testing

You can run the testing suite with:
```bash
$ yarn test
```

## Running the App
```bash
$ yarn start
```