#!/bin/bash

VERSION=$(cat VERSION)

sudo docker build -t winterfelldream2016/fusionpipe:$VERSION --rm=true .
