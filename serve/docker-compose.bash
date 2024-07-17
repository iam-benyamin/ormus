#! /bin/bash

docker compose \
--env-file ./serve/docker-compose/.env \
-f ./serve/docker-compose/services/etcd.yml \
-f ./serve/docker-compose/services/prometheus.yml \
-f ./serve/docker-compose/services/jaeger.yml \
-f ./serve/docker-compose/services/destination_publisher.yml \
-f ./serve/docker-compose/services/destination_webhook_worker.yml \
-f ./serve/docker-compose/services/otel_collector.yml \
-f ./serve/docker-compose/services/grafana.yml \
-f ./serve/docker-compose/services/redis.yml \
-f ./serve/docker-compose/services/scylladb.yml \
-f ./serve/docker-compose/services/rabbitmq.yml \
-f ./serve/docker-compose/services/traefik.yml \
 "$@"