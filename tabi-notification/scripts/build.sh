#!/usr/bin/env bash

set -e
now=$(date +'%Y-%m-%dT%T%z')
version=$(git rev-parse --short HEAD)
package="tabi-notification"

go build -a -ldflags "-X $package.version=$version -X $package.buildTime=$now" -o server cmd/api/main.go