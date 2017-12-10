#!/bin/bash
echo 'Enter S3 Bucket name:'
read BucketName
aws s3 rm "s3://${BucketName}/project/" --recursive
aws s3 cp "./project/" "s3://${BucketName}/project/" --recursive
aws cloudformation create-stack --stack-name "terragen" --template-body "file://cloudformation.yml" --capabilities CAPABILITY_NAMED_IAM --output text
