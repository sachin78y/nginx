FROM nginx
MAINTAINER "Sachin Yadav"
RUN apt-get update -y
RUN apt-get install apache2 apache2-utils net-tools vim wget  zip unzip -y
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
