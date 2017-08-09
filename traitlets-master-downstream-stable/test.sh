#!/usr/bin/env bash
install_ip traitlets
py.test --pyargs traitlets
py.test --pyargs jupyter_core
iptest
pytest -v --pyargs nbformat
pytest -v --pyargs jupyter_client
nosetests -v ipykernel
pytest -v --pyargs nbconvert
nosetests -v notebook
nosetests -v ipywidgets
