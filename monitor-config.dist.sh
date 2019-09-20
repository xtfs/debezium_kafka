#!/usr/bin/env bash
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '{
  "name": "inoserver-connector",
  "config": {
    "connector.class": "io.debezium.connector.mysql.MySqlConnector",
    "tasks.max": "1",
    "database.hostname": "192.168.20.6",
    "database.port": "3306",
    "database.user": "root",
    "database.password": "mobly",
    "database.server.id": "999777",
    "database.server.name": "dbserver1",
    "database.whitelist": "inoserver_prod",
    "table.whitelist": "inoserver_prod.queue",
    "database.history.kafka.bootstrap.servers": "kafka:9092",
    "database.history.kafka.topic": "queue-changes.inoserver_prod",
    "include.schema.changes": "false",
    "key.converter.schemas.enable": "false",
    "value.converter.schemas.enable": "false"
  }
}'