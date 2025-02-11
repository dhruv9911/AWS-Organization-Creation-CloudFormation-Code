#!/bin/bash

# Variables
ARTIFACT_BUCKET="aws-organization-creation-cloudformation-code-bucket"
STACK_NAME_PREFIX="my-stack"

# Deploy Organization Stack
aws cloudformation deploy \
  --template-file s3://$ARTIFACT_BUCKET/templates/organization.yml \
  --stack-name $STACK_NAME_PREFIX-organization \
  --capabilities CAPABILITY_NAMED_IAM

