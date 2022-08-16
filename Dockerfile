FROM centos
#LABEL org.opencontainers.image.authors="muhammad.umar@divaaco.com"
RUN yum install unzip httpd -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assests/files/free-css-templates/download/page258/loxury.zip /var/www/html
RUN unzip loxury.zip
RUN cp -R loxury/* .
RUN -rm -rf loxury.zip loxury
CMD [ "/usr/sbin/httpd", "-D","FOREGROUND" ]
EXPOSE 80
