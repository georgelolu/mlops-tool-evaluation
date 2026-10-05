#!/bin/bash

set -e

apt-get update

apt-get install -y \
  ca-certificates \
  curl \
  git \
  docker.io \
  docker-compose-plugin

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

mkdir -p /opt/mlops

cd /opt/mlops

git clone "${repository_url}" application

cd application

cat > .env <<EOF
MLFLOW_BUCKET=${bucket_name}
AWS_DEFAULT_REGION=us-east-1
EOF

docker compose up -d
