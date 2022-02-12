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
# protoc \
#   ./protos/**  \
#   --js_out="import_style=commonjs:env-nodejs" \
#   --grpc-web_out="import_style=typescript,mode=grpcweb:env-nodejs"
PROTOC="./env-nodejs/node_modules/.bin/grpc_tools_node_protoc"
PROTOC_GEN_TS_PATH="./env-nodejs/node_modules/.bin/protoc-gen-ts"
PROTOC_GEN_GRPC_PATH="./env-nodejs/node_modules/.bin/grpc_tools_node_protoc_plugin"
$PROTOC \
    ./protos/** \
    --plugin=protoc-gen-ts=$PROTOC_GEN_TS_PATH \
    --plugin=protoc-gen-grpc=${PROTOC_GEN_GRPC_PATH} \
    --js_out=import_style=commonjs:env-nodejs \
    --grpc_out=grpc_js:env-nodejs \
    --ts_out=grpc_js:env-nodejs