# Captains Cake

## Setting up Dependencies
1) Install [docker](https://docs.docker.com/docker-for-mac/install/)
2) Install rbenv/nodeenv

```bash
$ brew install rbenv nodenv

# If you're going to be working in node
$ nodenv init
$ export node_version=`cat ./node-express/.node-version`
$ nodenv install $node_version


# If you're going to be working in ruby
$ rbenv init
$ export ruby_version=`cat ./ruby-sinatra/.ruby-version`
$ rbenv install $ruby_version
```

# Setting up Backing Services:

```bash
$ (cd docker && docker-compose up -d)
```

This will launch the services specified in the [docker-compose.yml](./docker/docker-compose.yml) file


| Service          | Name                        | Address           | Description                                                          |
|------------------|-----------------------------|-------------------|----------------------------------------------------------------------|
| Mysql         | docker_mysql-database_1  | `127.0.0.1:11001` | A Mysql instance, username is `root`      |

To stop the services you can run:
```bash
$ (cd docker && docker-compose down)
```