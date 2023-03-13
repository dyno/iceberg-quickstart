https://iceberg.apache.org/spark-quickstart/

## The Problem

```
docker-compose up
Error response from daemon: bad parameter: link is not supported
```

## The Workaround - with Docker Desktop

now `make deploy` and open `http://localhost:30080`

This repository is the result of the following process.
- convert docker-compose.yaml to kubernates resource files with [kompose](https://kompose.io/)
- manually edit the generated file to make it work
- create Makefile to drive the deployment
