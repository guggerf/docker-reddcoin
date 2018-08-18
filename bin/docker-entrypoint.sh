#!/bin/bash
set -x

USER=reddcoin

chown -R ${USER} .
exec gosu ${USER} "$@"
