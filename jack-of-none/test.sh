#!/usr/bin/env bash

install_ip traitlets
py.test --pyargs traitlets

# IPython tests require nbformat, so they're run after installing that
install_ip ipython

install_jp jupyter_core
py.test --pyargs jupyter_core

install_jp nbformat
nosetests nbformat

iptest

# jupyter_client tests require ipykernel, so they're run after installing that
install_jp jupyter_client
install_ip ipykernel

py.test --pyargs jupyter_client
nosetests ipykernel

install_jp nbconvert
py.test --pyargs nbconvert

install_jp notebook
nosetests -v notebook
# python -m notebook.jstest

# Commented out until https://github.com/ipython/ipywidgets/issues/1064 fixed
install_ip ipywidgets
nosetests ipywidgets
