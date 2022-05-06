FROM centos:latest
MAINTAINER ppammi.kumari@gmail.com
RUN yum install -y httpd
ADD https://www.free-css.com/free-css-templates/page278/newsroom /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf newsroom/* .
RUN rm -rf newsroom newsroom.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
