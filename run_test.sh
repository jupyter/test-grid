#!/usr/bin/env bash
set -ex
source ./bashrc
cd $TEST
test -f requirements.txt && pip install --upgrade -r requirements.txt
. test.sh
