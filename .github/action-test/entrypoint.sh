#!/bin/sh -xe
pip install --upgrade --requirement requirements.txt
sh -c "./test-environment.sh $*"
