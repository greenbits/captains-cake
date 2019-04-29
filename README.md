# Captains Cake

# Goal

Build a webhook microservice. We have a need for a service that will expose an API to our application that will enable us to send reliable webhooks to any passed in URL with JSON payload.

# Objectives

This is a code challenge that we use to measure both your technical knowledge and how you embody the engineering values we have created as a team.

We want to measure the following values in you:

| Value          | Description                 |
|----------------|-----------------------------|
| Grit           | The ability to take something you don’t know and figure it out and deliver results |
| Curiosity      | The desire to learn new things. This typically shows up in the day-to-day as the ability to do full-stack engineering, and lack of fear in tackling a new language, framework, or pattern. |
| Iterative      | THIS IS NOT DEF OF ITERATIVE - The ability to take something complex and break it down into small pieces, and then improve these small pieces to achieve the acceptance criteria. |
| Delivery       | The ability to take an iterative mindset and push each small piece all the way through before moving on.         |
| Humility       | The understanding that they do not know everything, and possibly even the behavior that they don’t know anything. This will lead to a confident caution resulting in tests before code and investigation into the “right” way to solve a problem.                            |
| Collaboration  | The ability to effectively communicate questions and concerns, to accept input and give it equally.           |


# Acceptance Criteria

Build a webhook microservice in either Node or Sinatra that takes a payload


```javascript

{
  example: 1
}

```

and returns

```javascript
{
  example: 2
}
```

# Setting up Backing Services:
Requirements: Docker

```bash
$ (cd docker && docker-compose up -d)
```

This will launch the services specified in the [docker-compose.yml](./docker/docker-compose.yml) file


| Service          | Name                        | Address           | Description                                                          |
|------------------|-----------------------------|-------------------|----------------------------------------------------------------------|
| Adminer          | docker_adminer_1            | `127.0.0.1:11000` | [Adminer](https://www.adminer.org/) instance for inspecting database contents (http) |
| Mysql         | docker_mysql-database_1  | `127.0.0.1:11001` | A Mysql instance, username is `root`      |
| Memcached        | docker_memcached_1          | `127.0.0.1:12002` | A memcached instance                                                 |
| Redis            | gb-service_redis_1          | `127.0.0.1:12003` | A redis instance                                                     |

To stop the services you can run:
```bash
$ (cd docker && docker-compose down)
```