#!/bin/bash -e
environment=${1:-staging}






##############################################################################
# REMOVE THE LINES BELOW AND CUSTOMIZE THE SCRIPT FOR YOUR DEPLOYMENT
echo #########################################################################
echo "SCRIPT NEEDS TO BE CUSTOMIZED"
echo #########################################################################
exit 0
# REMOVE THE LINES ABOVE AND CUSTOMIZE THE SCRIPT FOR YOUR DEPLOYMENT
##############################################################################




site="http://${environment}.example.com/"

code=$(curl -sL --max-time 3 -o /dev/null -w "%{http_code}" $site)

echo "Site: $site"
echo "Expected '200'; Received: $code"

if [ "$code" != "200" ];
then
    exit 1
fi
