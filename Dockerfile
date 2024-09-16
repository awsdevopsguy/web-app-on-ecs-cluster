FROM centos:centos7

WORKDIR /app

RUN yum update -y && yum install -y httpd

COPY . /app

CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]


