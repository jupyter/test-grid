#!/usr/bin/env bash
set -e
source $(dirname $0)/bashrc
set -x
if [ -f "$TEST/requirements.txt" ]; then
  pip install --pre --upgrade -r "$TEST/requirements.txt"
fi

if [ -f "$TEST/install.sh" ]; then
  . $TEST/install.sh
fi
pip freeze
