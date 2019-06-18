FROM httpd
MAINTAINER arunbasu
RUN yum -y install httpd
COPY index.html /var/www/html
USER arun
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
