#!/bin/bash

# Variables
ARTIFACT_BUCKET="aws-organization-creation-cloudformation-code-bucket"
STACK_NAME_PREFIX="my-stack"

# Download templates from S3 to the local working directory
echo "Downloading templates from S3..."
aws s3 cp s3://$ARTIFACT_BUCKET/templates/ ./templates/ --recursive

# Deploy Organization Stack
echo "Deploying Organization Stack..."
aws cloudformation deploy \
  --template-file ./templates/organization.yml \
  --stack-name $STACK_NAME_PREFIX-organization \
  --capabilities CAPABILITY_NAMED_IAM

