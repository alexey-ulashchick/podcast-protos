#!/bin/bash

#Generating java code for protos
cd env-java || exit
./gradlew clean
./gradlew build

#Generating javascript/typescript code for protos
cd ../env-nodejs || exit
rm -rf protos
npm install
cd .. || exit
protoc \
  ./protos/**  \
  --js_out="import_style=commonjs:env-nodejs" \
  --grpc-web_out="import_style=typescript,mode=grpcweb:env-nodejs"
