# Captain's Cake: Ruby + Sinatra

https://github.com/sinatra/sinatra


## Setting up
Create & migrate the database:
```bash
$ rake db:create db:migrate
```

## Creating a Migration
```bash
$ rake db:create_migration NAME=<table_name>
```

## Running the app
```bash
$ ruby app.rb
```

## Running tests
```bash
$ bundle exec rspec spec
```
