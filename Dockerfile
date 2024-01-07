FROM centos:latest

LABEL author="shantayya swami"

RUN yum -y install httpd

COPY .  /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]


