FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update   
RUN apt install apache2 git -y
RUN apt clean
RUN apt install php -y  
WORKDIR /var/www/html   
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
