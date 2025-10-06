#!/usr/bin/env bash
[[ -n "${SDEBUG}" ]] && set -x
if [[ -z $@ ]];then
    exec bash
else
    exec "$@"
fi
