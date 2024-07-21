# This is the GitHub Repository to showcase my work on AWS
# Chapter 1: AWS CLI/CloudFormation

In this chapter, I will create the labs to show the AWS resource creation through AWS CLI and CloudFormation

1.The below is the command to create vpc through AWS CLI: 

command:
~~~
   aws ec2 create-vpc \
       --cidr-block 10.0.0.0/16 \
       --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=MyVpc}]'
~~~
