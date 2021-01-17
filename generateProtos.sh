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
  --plugin="protoc-gen-ts=env-nodejs/node_modules/.bin/protoc-gen-ts" \
  --js_out="import_style=commonjs,binary:env-nodejs" \
  --ts_out="service=grpc-web:env-nodejs" \
  ./protos/**
