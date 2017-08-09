#!/usr/bin/env bash
set -ex
source ./bashrc
cd $TEST
if [ -f test.sh ]; then
    . test.sh
else
    . ../default-test.sh
fi
