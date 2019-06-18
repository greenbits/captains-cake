# Captain's Cake: Ruby + [Sinatra](https://github.com/sinatra/sinatra)

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

This project use [Sinatra Active Record](https://www.rubydoc.info/gems/sinatra-activerecord/2.0.0). You can can add a migration by running:

```bash
$ rake db:create_migration add_thangs_to_helpfultable fieldname:string thangs:boolean
```

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
