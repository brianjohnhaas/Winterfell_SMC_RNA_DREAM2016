#!/bin/bash

VERSION=$(cat VERSION)

docker build -t winterfelldream2016/expressionpipe:$VERSION --rm=true .

