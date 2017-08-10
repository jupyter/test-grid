#!/usr/bin/env bash
set -ex

cd "$TEST"

if [ -f install.sh ]; then
  . install.sh
else
  . ../default/install.sh
fi

