#!/usr/bin/env bash

# default tests to run (runs the test command for every package)
# if no test.sh is defined, this will run instead
set +e

rc=0

py.test --pyargs traitlets || rc=1
py.test --pyargs jupyter_core || rc=1
iptest || rc=1
pytest --pyargs nbformat || rc=1
pytest --pyargs jupyter_client || rc=1
nosetests ipykernel || rc=1
pytest --pyargs nbconvert || rc=1
nosetests notebook || rc=1
nosetests ipywidgets || rc=1

exit $rc
