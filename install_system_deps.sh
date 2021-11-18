#!/bin/bash
set -e

# from install_tidyverse.sh
apt-get update -qq && \
  apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    unixodbc-dev

# for hugheylab
apt-get -y install \
  tmux \
  nano \
  zlib1g-dev

rm -rf /var/lib/apt/lists/*
