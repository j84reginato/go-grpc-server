#!/usr/bin/env bash

sudo sysctl -w vm.max_map_count=262144
sudo docker network create mm_gateway
sudo docker-compose up --build