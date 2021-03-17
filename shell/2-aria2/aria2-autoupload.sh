#!/bin/bash
url=$1
aria2c -s10 -x10 -j10 --dir=/home/video --on-download-complete=/home/shell/GDIndex.sh --max-concurrent-downloads=5 --max-connection-per-server=32 --min-split-size=4M --check-certificate=false ${url}