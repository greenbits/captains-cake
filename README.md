# Captains Cake

## Objectives of the Challenge

This is a code challenge that we use to measure both your technical knowledge and how you embody the engineering values we have created as a team.

We want to measure the following values in you:

| Value          | Description                 |
|----------------|-----------------------------|
| Grit           | The ability to take something you don’t know and figure it out and deliver results |
| Curiosity      | The desire to learn new things, day-to-day as a full-stack engineer. |
| Iteration      | The ability to take something complex and break it down into small pieces, and then improve these small pieces overtime. |
| Delivery       | The ability to take an iterative mindset and reach the acceptance criteria before moving on.|
| Humility       | The understanding that they do not know everything. |
| Collaboration  | The ability to effectively communicate questions and concerns, to accept input and give it equally. |

The technical portion we will be measuring you on requires you to do the work below. It entails these 3 steps:

0) Setting up the project,
1) Defining the acceptance criteria,
2) Iterating on the code base, and
3) Trying to pass the acceptance criteria.

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