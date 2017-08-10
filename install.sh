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

# show HEAD of all from-git installs
if [ -f "$TEST/requirements.txt" ]; then
  for repo in $(cat $TEST/requirements.txt | grep 'git+' | sed s/git+//); do
    show_head $repo
  done
fi

