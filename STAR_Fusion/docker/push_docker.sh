#!/bin/bash

VERSION=$(cat VERSION)

docker push winterfelldream2016/fusionpipe:$VERSION 
docker push winterfelldream2016/fusionpipe:latest

