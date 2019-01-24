#!/bin/sh

echo "Update pip and install requirements"
pip install -U pip
pip install --requirement requirements.txt

echo "Run flake8"
flake8 --ignore=E501,E231

echo "Run pylint"
pylint --errors-only --disable=C0301 --disable=C0326 *.py tests/*.py
