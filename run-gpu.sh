#!/bin/bash -eux
sudo docker compose -f docker-compose.yml -f docker-compose.gpu.yml up
