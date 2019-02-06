#!/bin/sh -xe
pip install --upgrade --requirement requirements.txt
./upload-new-version.sh
