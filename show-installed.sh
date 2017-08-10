#!/usr/bin/env bash
set -ex
ROOT=$(dirname $0)

pip freeze

# show HEAD of all from-git installs
if [ -f "$TEST/requirements.txt" ]; then
  for repo in $(cat $TEST/requirements.txt | grep 'git+' | sed s/git+//); do
    $ROOT/bin/show-head $repo
  done
fi

