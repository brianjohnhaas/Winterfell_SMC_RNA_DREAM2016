#!/bin/bash

VERSION=$(cat VERSION)

docker build -t winterfelldream2016/expressionpipe:$VERSION --rm=true .
docker build -t winterfelldream2016/expressionpipe:latest --rm=true .
