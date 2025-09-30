FROM lampimg
ENV TERM=xterm
LABEL maintainer="a23joserf"

COPY ./wp.sh /

RUN chmod +x /wp.sh

RUN apt update && apt install -y wget \
    && cd /tmp; wget https://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz \
    && mv wordpress /var/www/html \
    && chown -R www-data:www-data /var/www/html/wordpress

ENTRYPOINT ["/wp.sh"]