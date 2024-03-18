#!/bin/bash

./build.sh
# echo "Deleting "
docker rm -f python-django 
echo "Running python-django..."

docker run --name python-django -d --env PYTHON_ENV=development -v /${PWD}/../://root/app -p 8000:8000 python-django