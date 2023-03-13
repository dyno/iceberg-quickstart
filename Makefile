SHELL := /bin/bash

# S3 API compatible alternative
# https://hub.docker.com/r/minio/minio
deploy-minio:
	kubectl create -f minio-deployment.yaml
	kubectl create -f minio-service.yaml
	kubectl create -f mc-job.yaml

# Iceberg JDBC Catalog backed by sqlite
# https://hub.docker.com/r/tabulario/iceberg-rest
deploy-rest:
	kubectl create -f rest-deployment.yaml
	kubectl create -f rest-service.yaml

# https://hub.docker.com/r/tabulario/spark-iceberg
deploy-spark-iceberg:
	kubectl create -f spark-iceberg-claim0-persistentvolumeclaim.yaml
	kubectl create -f spark-iceberg-claim1-persistentvolumeclaim.yaml
	kubectl create -f spark-iceberg-deployment.yaml
	kubectl create -f spark-iceberg-service.yaml

deploy: deploy-minio deploy-rest deploy-spark-iceberg
