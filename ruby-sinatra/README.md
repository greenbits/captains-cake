# Captain's Cake: Ruby + Sinatra

https://github.com/sinatra/sinatra

## Setting up

Install dependencies:

```bash
$bundle install
````
Create & migrate the database:
```bash
$ rake db:create db:migrate
```
You should be able to see the database & it's schema if you visit http://0.0.0.0:11000/ on your browser

### Creating a Migration
```bash
$ rake db:create_migration NAME=<table_name>
```