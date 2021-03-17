#!/bin/bash
mkdir ~/.screen && chmod 700 ~/.screen
export SCREENDIR=$HOME/.screen
sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf
supervisord -c /etc/supervisord.conf
