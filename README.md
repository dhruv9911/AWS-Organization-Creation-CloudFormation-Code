# AWS-Organization-Creation-CloudFormation-Code
CloudFormation Code for Create AWS Organization with AWS CodeBuild



AWS Command for Create CodeBuild, CodePipeline, S3 Bucket and IAM roles for 
Note: Use YML file which is inside pipeline folder file name cloudformation.yml for create CodeBuild, CodePipeline, IAM roles from Cliudformation Code-

Use Command:



aws cloudformation create-stack \
  --stack-name MyCICDPipeline1 \
  --template-body file://template.yml \
  --parameters \
      ParameterKey=GitHubOwner,ParameterValue=dhruv9911 \
      ParameterKey=GitHubRepoName,ParameterValue=https://github.com/dhruv9911/AWS-Organization-Creation-CloudFormation-Code.git \
      ParameterKey=GitHubBranch,ParameterValue=main \
      ParameterKey=GitHubToken,ParameterValue=ghp_ \
      ParameterKey=ArtifactBucketName,ParameterValue=aws-organization-creation-cloudformation-code-bucket \
  --capabilities CAPABILITY_NAMED_IAM



After that need to configure Source in AWS Codepipeline once again
