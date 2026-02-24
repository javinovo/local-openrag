#!/bin/bash -eux
sudo docker compose -f docker-compose.yml -f docker-compose.gpu.yml -f docker-compose.langfuse.yml up
