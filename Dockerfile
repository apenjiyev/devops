FROM centos:6
LABEL maintainer="apenjiyev"
RUN yum install httpd -y
RUN service httpd enable
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
