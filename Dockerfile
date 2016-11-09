FROM php:7.0-apache

MAINTAINER itzg

ADD https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz /tmp/dokuwiki.tgz

RUN tar -C /var/www -xvf /tmp/dokuwiki.tgz && \
    rm -rf /var/www/html && \
    mv /var/www/dokuwiki-* /var/www/html && \
    chown -R www-data: /var/www/html && \
    rm /tmp/dokuwiki.tgz

VOLUME ["/var/www/html/data"]
