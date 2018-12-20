#!/usr/bin/env bash

curl -sSL http://nginx.org/download/nginx-1.8.0.tar.gz | tar zxfv - -C /tmp && cd /tmp/nginx-1.8.0/
./configure --prefix=$HOME/nginxinstall --with-http_ssl_module
make
make install
export PATH="$PATH:$HOME/nginxinstall/sbin/"