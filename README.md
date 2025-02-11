# AWS-Organization-Creation-CloudFormation-Code
CloudFormation Code for Create AWS Organization with AWS CodeBuild



AWS Command for Create CodeBuild, CodePipeline, S3 Bucket and IAM roles for 
Note: Use YML file which is inside pipeline folder for create CodeBuild, CodePipeline, IAM roles from Cliudformation Code-

Use Command:
aws cloudformation create-stack \
  --stack-name MyCICDPipeline \
  --template-body file://template.yml \
  --parameters \
      ParameterKey=GitHubRepo,ParameterValue=https://github.com/dhruv9911/AWS-Organization-Creation-CloudFormation-Code.git \
      ParameterKey=GitHubBranch,ParameterValue=main \
      ParameterKey=GitHubToken,ParameterValue=<github Token> \
      ParameterKey=ArtifactBucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket \
  --capabilities CAPABILITY_NAMED_IAM
