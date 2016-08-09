#!/bin/bash

VERSION=$(cat VERSION)

docker push winterfelldream2016/expressionpipe:$VERSION 
