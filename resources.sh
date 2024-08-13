#!/bin/bash

########
#Author: Yashh
#Date: 21-06-2024
#
#version: 1
#
# This script will report the AWS resource usage
########

#S3 Buckets
#EC2 Instances
#Lambda Functions
#IAM Users

set -x

#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances

#list lambda
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "Print list of IAM users"
aws iam list-users
aws iam list-users | jq '.Users[].UserId'


