#!/usr/bin/env bash

BUILD_ID=$1

## Create firebase app and capture output
firebase apps:create WEB $BUILD_ID > output.txt

cat output.txt

## Extract App Id from output and write to file
cat output.txt | grep "App ID:" | awk '{print $NF}' > appID.txt

cat appID.txt

APP_ID=`cat appID.txt`

firebase apps:sdkconfig -o appConfig.txt WEB $APP_ID

cat appConfig.txt

## Clean up
rm output.txt
