#!/bin/bash
REPO_URL="https://github.com/NikolayModonov/shvirtd-example-python.git"
TARGET_DIR="/opt/shvirtd-example-python"

echo "Cloning repository to $TARGET_DIR..."
rm -rf $TARGET_DIR
git clone $REPO_URL $TARGET_DIR

cd $TARGET_DIR

echo "Running docker compose up..."
docker compose up -d --build

echo "Deployment finished."