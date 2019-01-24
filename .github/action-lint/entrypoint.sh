#!/bin/sh -xe

echo ">>>>>>>> Update pip and install requirements"
pip install --quiet --upgrade pip
pip install --quiet --requirement requirements.txt

echo ">>>>>>>> Run flake8"
flake8 --ignore=E501,E231

echo ">>>>>>>> Run pylint"
pylint --disable=C0301 --disable=C0326 *.py tests/*.py
