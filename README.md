# Captains Cake

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