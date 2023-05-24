#!/bin/bash

podman run -ti \
        --name pycouchdb_test_db \
        --rm \
	-d \
        -e COUCHDB_USER=admin \
        -e COUCHDB_PASSWORD=password \
        -p 5984:5984 \
        docker.io/apache/couchdb
