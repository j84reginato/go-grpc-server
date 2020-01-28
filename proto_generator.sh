#!/bin/bash

protoc -I protofile/ protofile/protofile.proto --go_out=plugins=grpc:protofile
