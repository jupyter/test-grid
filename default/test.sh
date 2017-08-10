#!/usr/bin/env bash

# default tests to run (runs the test command for every package)
# if no test.sh is defined, this will run instead

py.test --pyargs traitlets
py.test --pyargs jupyter_core
iptest
pytest --pyargs nbformat
pytest --pyargs jupyter_client
nosetests ipykernel
pytest --pyargs nbconvert
nosetests notebook
nosetests ipywidgets
