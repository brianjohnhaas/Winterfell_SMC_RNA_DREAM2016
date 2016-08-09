#!/bin/bash

VERSION=$(cat VERSION)

docker build -t winterfelldream2016/fusionpipe:$VERSION --rm=true .
docker build -t winterfelldream2016/fusionpipe:latest --rm=true .
