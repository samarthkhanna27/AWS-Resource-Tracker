#!/bin/bash


#################################################
# Author: Samarth Khanna
# Date: 16-Feb-2025
# Version: v1
# This script will report the AWS resource usage.
#################################################

#set -x

# AWS S3
# list s3 buckets
echo "Printing a list of all the AWS S3 Buckets."
aws s3 ls
echo "#########################################################################################"

# AWS EC2
# list ec2 instances
echo "Printing a list of all the Instance IDs of AWS EC2 Instances."
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "#########################################################################################"

# AWS Lambda
# list aws lambda functions
echo "Printing a list of all the AWS Lambda Functions."
aws lambda list-functions
echo "#########################################################################################"

# AWS IAM Users
# list aws iam users
echo "Printing a list of all the AWS IAM Users."
aws iam list-users | jq '.Users[].UserName'
echo "#########################################################################################"
~ 
