# interview-scheduler-authorization-db


## Getting started
[docker-compose.yml](https://gist.github.com/MaximKarabitsin/66cbb563d0d5711d085656bb8590c78f)

###Installing

Set property(spring.datasource.url) in application.properties

```bash
docker build -t <name-images:tag> .
```
or

```bash
docker push maximkarabitsin/interview-scheduler-authorization-db
```

###Running

```bash
docker volume create --name pgdata
docker run --name <name-container> -p 8092:5432 <name-images>
```