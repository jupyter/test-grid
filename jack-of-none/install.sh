# have to run ipykernel install after IPython
pip install --upgrade -r "requirements.txt"
pip install --upgrade git+https://github.com/ipython/ipykernel#egg=ipykernel[test]
