#!/bin/bash


my_path="$(readlink -f "${0}")"
my_dir="$(dirname "${my_path}")"


function log() {
    echo "${@}" >&2
}

set -x

have_failures=false

"${my_dir}/run_tests.py" || have_failures=true

if [[ $have_failures = true ]]; then
    log "Errors detected!"
    exit 1
else
    log "All files created successfully"
fi
