#!/usr/bin/env bash

set -ex

GOBIN=${GOBIN:-$(pwd)/bin}
export GOBIN
mkdir -p "$GOBIN"

for d in filepathwalk filepathwalkdir karrick readdir; do
    go install -C $d
done

echo 'All Done'
