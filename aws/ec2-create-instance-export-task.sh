#!/usr/bin/env bash

# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html
#aws ec2 create-instance-export-task \
#    --profile vaurum \
#    --instance-id $1 \
#    --description "bitme ec2 instance backup" \
#    --target-environment vmware \
#    --export-to-s3-task DiskImageFormat=vmdk,ContainerFormat=ova,S3Bucket=$2

aws ec2 create-instance-export-task --profile vaurum --instance-id $1 --description "bitme ec2 instance backup" --target-environment vmware --export-to-s3-task DiskImageFormat=vmdk,ContainerFormat=ova,S3Bucket=$2
