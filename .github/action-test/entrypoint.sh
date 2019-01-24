#!/bin/sh -xe
pip install --quiet --upgrade pip
pip install --quiet --requirement requirements.txt
python -m pytest --verbose --junitxml=junit/test-results.xml
