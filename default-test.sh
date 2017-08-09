#!/usr/bin/env bash
# default tests to run (runs the test command for every package)
# use this if the default tests are what you want
py.test -v --pyargs traitlets
py.test -v --pyargs jupyter_core
iptest -- -v
pytest -v --pyargs nbformat
pytest -v --pyargs jupyter_client
nosetests -v ipykernel
pytest -v --pyargs nbconvert
nosetests -v notebook
nosetests -v ipywidgets
