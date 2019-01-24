#!/bin/sh

echo ">>>>>>>> Update pip and install requirements"
pip install -U pip
pip install --quiet --requirement requirements.txt

echo ">>>>>>>> Run pytest"
pytest --verbose --junitxml=junit/test-results.xml
