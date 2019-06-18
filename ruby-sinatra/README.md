# Captain's Cake: Ruby + Sinatra

https://github.com/sinatra/sinatra

## Setting up
=======
Install dependencies:
```bash
$ bundle install
```

### Creating the database:
```bash
$ rake db:create
```

### Creating a Migration
```bash
$ rake db:create_migration NAME=<table_name>
```
#NOTES FLESH THIS OUT MORE ADD IN COLUMNS OR ATTRIBUTES HERE

### Executing Migrations

If you want to migrate your database:
```bash
$ rake db:migrate
```

If you want to rollback a migration use:
```bash
$ rake db:rollback
```

### Testing

## Running tests
```bash
$ bundle exec rspec spec
```

### Running the app
```bash
$ ruby app.rb
```
