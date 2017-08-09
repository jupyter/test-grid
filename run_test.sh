#!/usr/bin/env bash
set -ex
source ./bashrc
cd $TEST
test -f requirements.txt && pip install --upgrade -r requirements.txt
if [ -f test.sh ]; then
    . test.sh
else
    . ../default-test.sh
fi
