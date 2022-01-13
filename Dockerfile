# syntax=docker/dockerfile:1
FROM php:7.4

RUN curl https://wordpress.org/latest.tar.gz --output wordpress.tar.gz
RUN tar -xf wordpress.tar.gz && rm wordpress.tar.gz
COPY lint.php lint.php
COPY gplint /bin/gplint
RUN chmod +x /bin/gplint

RUN apt-get update -y && apt-get install -y gettext