#!/bin/bash

set -euf -o pipefail

siteBuild () {
    PUBLIC_DIR="${SCRIPT_DIR}/../public"
    rm -rf "${PUBLIC_DIR}"
    mkdir -p "${PUBLIC_DIR}"
    hugo --minify
}

siteRun () {
    hugo server
}
