# test-grid

Extra tests for combined Jupyter projects, for use as Travis cron jobs.

Each test dir may have the following:

- requirements.txt
- install.sh
- test.sh

If `test.sh` is omitted, the tests for all core IPython and Jupyter projects are run.

If `install.sh` is omitted, `requirements.txt` will be installed with pip.
