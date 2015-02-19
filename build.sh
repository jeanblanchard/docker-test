#!/bin/sh

# Stop on errors
set -es

# Build image
sudo docker build -t dockertest .

# Run image
res=$(sudo docker run build)

# Check image
secret=$(cat ./secret.txt)
[ "$res" == "$secret" ]
