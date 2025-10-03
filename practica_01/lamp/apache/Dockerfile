From debian:12
ENV TERM=xterm
LABEL maintainer="a23joserf"

EXPOSE 80 443

RUN apt update && apt -y install \
    apache2 \
    php \
    php-pear \
    php-mysql 

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]