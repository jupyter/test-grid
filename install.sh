#!/usr/bin/env bash
set -ex

if [ -f "$TEST/requirements.txt" ]; then
  pip install --pre --upgrade -r "$TEST/requirements.txt"
fi

if [ -f "$TEST/install.sh" ]; then
  . $TEST/install.sh
fi

