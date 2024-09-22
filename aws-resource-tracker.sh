#!/bin/bash


###########################
#Author- Neetika
#Date - 23/09/2024
#
#Version- v1
#
#This script will report the Aws resource usage
###########################


# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USERS

#set -x

# list s3 buckets

echo "Print list of S3 buckets"
aws s3 ls

#list ec2 Instances

echo "Print list of EC2 instances"
aws ec2 describe-instances

echo "Print the name of the Ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda

echo "Print list of Lambda"
aws lambda list-functions

# list IAM users

echo "Print list of IAM users"
aws iam list-users


