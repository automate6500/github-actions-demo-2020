#!/bin/sh -xe
pip install --upgrade --requirement requirements.txt
sh -c "./deploy-new-version.sh $*"
