#! /usr/bin/env bash

rm -fr bin || true
mkdir -p bin

go build -o bin/ .
