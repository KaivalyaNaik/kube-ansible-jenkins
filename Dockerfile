FROM centos:latest
LABEL name kaivalyanaik55@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/restoran.zip /var/www/html
WORKDIR /var/html/html/
RUN unzip restoran.zip
RUN cp -rvf restoran/*
RUN rm -rf restoran restoran.zip
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22



