FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip
ADD https://https://www.free-css.com/free-css-templates/page258/loxury /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
