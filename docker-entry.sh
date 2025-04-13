#!/usr/bin/env bash
[[ -n "${SDEBUG}" ]] && set -x
cd /app
python -m pip install -e . >/dev/null 2>&1
if [[ -z $@ ]];then
    exec bash
else
    exec "$@"
fi
# vim:set et sts=4 ts=4 tw=0:
