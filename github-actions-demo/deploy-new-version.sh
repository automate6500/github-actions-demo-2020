#!/bin/bash -e
environment=${1:-staging}
application=${2:-target-app}
count_max=${3:-30}
tag=$(date +%F)-$(git rev-parse --short HEAD)





##############################################################################
# REMOVE THE LINES BELOW AND CUSTOMIZE THE SCRIPT FOR YOUR DEPLOYMENT
echo #########################################################################
echo "SCRIPT NEEDS TO BE CUSTOMIZED"
echo #########################################################################
exit 0
# REMOVE THE LINES ABOVE AND CUSTOMIZE THE SCRIPT FOR YOUR DEPLOYMENT
##############################################################################






function get_status() {
    echo $(aws elasticbeanstalk describe-environment-health --environment-name ${environment} --attribute-names Status --query="Status")
}

status=$(get_status)

if [ $status != '"Ready"' ];
then
    echo "Unexpected status before deployment: ${status}"
    exit 1
fi

aws elasticbeanstalk update-environment \
    --application-name ${application} \
    --environment-name ${environment} \
    --version-label ${tag}

count=0

while [ $status == '"Ready"' ] || [ $count -eq $count_max ];
do
    count=$(( $count + 1))
    status=$(get_status);
    sleep 10;
done

count=0

until [ $status == '"Ready"' ] || [ $count -eq $count_max ];
do
    count=$(( $count + 1))
    status=$(get_status);
    echo "count=${count}; status=${status}"
    sleep 10;
done

if [ $count -eq $count_max ];
then
    echo
    echo ----
    echo "Something went wrong. :/"
    echo "application-name ${application}"
    echo "environment-name ${environment}"
    echo "version-label    ${tag}"
    echo ----
    echo
    exit 1
else
    echo
    echo ----
    echo "completed successfully! :D"
    echo "application-name ${application}"
    echo "environment-name ${environment}"
    echo "version-label    ${tag}"
    echo ----
    echo
    exit 0
fi
