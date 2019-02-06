#!/bin/sh -xe
pip install --quiet --upgrade pip
pip install --quiet --requirement requirements.txt
flake8 --ignore=E501,E231
pylint --disable=C0301 --disable=C0326 *.py tests/*.py
