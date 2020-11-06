#!/usr/bin/env bash

## Create firebase app and capture output
firebase apps:create WEB $BUILD_ID > output.txt

cat output.txt

## Extract App Id from output and write to file
cat output.txt | grep "App ID:" | awk '{print $NF}' > appID.txt

## Clean up
rm output.txt
