# Captain's Cake: Ruby + [Sinatra](https://github.com/sinatra/sinatra)

## Setting up
=======
Install dependencies:
```bash
$ bundle install
```

### Creating the database:
```bash
$ bundle exec rake db:create
```

### Creating a Migration

This project use [Sinatra Active Record](https://www.rubydoc.info/gems/sinatra-activerecord/2.0.0). You can can add a migration by running:

```bash
$ bundle exec rake db:create_migration add_thangs_to_helpfultable fieldname:string thangs:boolean
```

### Executing Migrations

If you want to migrate your database:
```bash
$ bundle exec rake db:migrate
```

If you want to rollback a migration use:
```bash
$ bundle exec rake db:rollback
```

If you want to prepare you test database for unit tests
```bash
$ bundle exec rake db:test:prepare
```

### Testing

## Running tests
```bash
$ bundle exec rspec spec
```

### Running the app
```bash
$ bundle exec ruby app.rb
```
