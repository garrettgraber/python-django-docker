#!/bin/bash
echo "Building python-django..."

docker build -t python-django . 
# docker build --no-cache -t python-django .

echo "Build Done!"