#!/bin/bash -e
openssl rand -base64 32 > ./trigger.txt
git add ./trigger.txt
git commit --all --message "${1:-Push a change to trigger the build. $(cat ./trigger)}"
git push
