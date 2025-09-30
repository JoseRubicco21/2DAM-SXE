FROM debian:12
ENV TERM=xterm
LABEL maintainer="a23joserf"

COPY ./lamp.sh /lamp.sh
RUN chmod +x /lamp.sh

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install \
    apache2 \
    mariadb-server \
    mariadb-client \
    php \ 
    php-pear \ 
    php-mysql 

ENTRYPOINT ["/lamp.sh"]