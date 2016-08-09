#!/bin/bash

VERSION=$(cat VERSION)

docker build -t winterfelldream2016/fusionpipe:$VERSION --rm=true .
