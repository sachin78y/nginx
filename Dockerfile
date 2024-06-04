FROM quay.io/ysachin/nginx:latest
MAINTAINER "Sachin Yadav"
WORKDIR /opt
RUN apt-get install bind* -y
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
