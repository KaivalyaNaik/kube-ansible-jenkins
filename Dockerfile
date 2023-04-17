FROM centos:7
LABEL name kaivalyanaik55@gmail.com
RUN yum install -y httpd zip unzip wget
WORKDIR /var/www/html/
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page290/restoran.zip && \
    unzip restoran.zip && \
    rm restoran.zip && \
    mv bootstrap-restaurant-template/* . && \
    rm -rf bootstrap-restaurant-template
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22
