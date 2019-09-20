#!/usr/bin/env bash
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d '{
  "name": "inoserver-connector",
  "config": {
    "connector.class": "io.debezium.connector.mysql.MySqlConnector",
    "tasks.max": "1",
    "database.hostname": "192.168.0.6",
    "database.port": "3306",
    "database.user": "root",
    "database.password": "root",
    "database.server.id": "999777",
    "database.server.name": "dbserver1",
    "database.whitelist": "mydababase",
    "table.whitelist": "mydababase.mytable",
    "database.history.kafka.bootstrap.servers": "kafka:9092",
    "database.history.kafka.topic": "queue-changes.mydababase",
    "include.schema.changes": "false",
    "key.converter.schemas.enable": "false",
    "value.converter.schemas.enable": "false"
  }
}'