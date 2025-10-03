FROM debian:12
ENV TERM=xterm
LABEL maintainer="a23joserf"

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update && apt-get -y install \
    mariadb-server 

RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["mysqld_safe"]