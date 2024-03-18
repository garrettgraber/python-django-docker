#!/bin/bash

echo "Bootstrap is running..."
echo "Link in preinstalled packages...";
# rm -rf /root/app/node_modules
# ln -s /root/node_modules /root/app/node_modules
echo "python starting the app...";

echo "Current directory: $PWD"
ls

cd /root/app/src/hello_django
# npm ls --depth=0
echo "Current directory: $PWD"
ls

echo
which python
which bash
python --version
echo

# npm ls --depth=0

chmod -R 0777 /tmp
echo "Tailing the service..."
# tail -f /root/app/app.log
# echo "Current directory: $PWD"
# ls

# echo "Current directory: $PWD"
# ls
echo "Current Python environment: $PYTHON_ENV"
# echo "Run status in bootstrap: $RUN_STATUS"


if [ "$PYTHON_ENV" == "compile" ]; then
  echo "Compiling Python Django Application for production..."
  # npm run build 
fi

# if [ "$PYTHON_ENV" == "production" ]; then
# 	echo "Runing production Python Django Application"
# 	npm run production
# fi

if [ "$PYTHON_ENV" == "development" ]; then
  echo "Starting Python Django Application..."
  python manage.py runserver 0.0.0.0:8000
fi