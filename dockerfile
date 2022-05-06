FROM centos:latest
MAINTAINER ppammi.kumari@gmail.com
RUN yum install -y httpd
ADD https://www.free-css.com/free-css-templates/page277/intot /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
