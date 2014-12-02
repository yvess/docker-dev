FROM dockerfile/ubuntu
MAINTAINER Yves Serrano <y@yas.ch>

RUN apt-get update && apt-get install -yq \
        nodejs \
        mercurial \
        autoconf \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        zlib1g-dev \
        libffi-dev \
        libcairo2-dev \
        libpango1.0-0 \
        dnsutils \
        links \
        libncurses5-dev \
        libjpeg-dev \
        liblcms2-dev \
        libpq-dev && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
