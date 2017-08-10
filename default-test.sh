#!/usr/bin/env bash
# default tests to run (runs the test command for every package)
# use this if the default tests are what you want
py.test --pyargs traitlets
py.test --pyargs jupyter_core
iptest
pytest --pyargs nbformat
pytest --pyargs jupyter_client
nosetests ipykernel
pytest --pyargs nbconvert
nosetests notebook
nosetests ipywidgets
