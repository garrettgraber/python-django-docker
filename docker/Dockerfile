#FROM python:3.10
FROM python:latest

# setup environment variable  
#ENV DockerHOME=/root/

# set work directory
#RUN mkdir -p $DockerHOME

# set work directory
#WORKDIR $DockerHOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies  
RUN pip install --upgrade pip

# install django
RUN pip install django==5.0

# run this command to install all dependencies  
#RUN pip install -r requirements.txt

# port where the Django app runs  
EXPOSE 8000

#wire in a startup script
ADD bootstrap.sh /root/bootstrap.sh

CMD /root/bootstrap.sh

# start server  
#CMD python manage.py runserver 0.0.0.0:8000
