#!/bin/sh

echo ">>>>>>>> Update pip and install requirements"
pip install --quiet --upgrade pip
pip install --quiet --requirement requirements.txt

echo ">>>>>>>> Run pytest"
python -m pytest --verbose --junitxml=junit/test-results.xml
