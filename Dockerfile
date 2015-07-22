FROM ubuntu:14.04
MAINTAINER Yves Serrano <y@yas.ch>

RUN apt-get update && \
    apt-get install -yq \
        build-essential \
        software-properties-common \
        curl \
        wget \
        git-core \
        mercurial \
        autoconf \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        zlib1g-dev \
        libncurses5-dev \
        libjpeg-dev \
        liblcms2-dev \
    && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
