#!/bin/sh
pip install --update pip
pip install --requirement requirements.txt
flake8 --ignore=E501,E231
pylint --errors-only --disable=C0301 --disable=C0326 *.py tests/*.py
