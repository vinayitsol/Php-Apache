FROM ubuntu
RUN apt-get update -y
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
RUN apt-get install php -y
WORKDIR /var/www/html
RUN rm -rf index.html /var/www/html/
COPY phpapp/*  /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl"]
EXPOSE 9002
CMD ["-D", "FOREGROUND"]

