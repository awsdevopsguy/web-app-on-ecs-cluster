FROM amazonlinux:latest

WORKDIR /var/www/html

RUN yum clean all && yum update -y && yum install -y httpd

COPY . /var/www/html/

RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
