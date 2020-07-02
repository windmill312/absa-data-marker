#!/bin/bash
app="absa-data-marker"
docker run --name ${app} \
      --mount "type=bind,source=$(pwd)/api,target=/app/api" \
      -d -p 8081:5000 ${app}