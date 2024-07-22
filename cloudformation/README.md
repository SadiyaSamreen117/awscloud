# Creating CloudFormation Template 

- This is a IaC(Infrastructure as a code tool) from AWS
- In this, by using template we are going to create a stack 
- The stack can be created by two ways 

   1.We can create a stack using CloudFormation service in AWS

   2.We can create a stack using GitBash

## Lets ,first create a stack using CloudFormation service in AWS 

The following is the template to create a stack 

~~~
AWSTemplateFormatVersion: "2010-09-09"
Description: >
  This template creates a VPC in the us-east-1 region.
  Author: Sadiya
  Company: test
Resources:
  MyCfnVPC:
    Type: AWS::EC2::VPC
    Properties:
      CidrBlock: "10.0.0.0/16"
      Tags:
        - Key: Name
          Value: MyStageVPC
        - Key: Env
          Value: Prod
        - Key: Department
          Value: DevOps
~~~

After creatng a template go to AWS console and search for CloudFormation service and click create stack 

Then select respective sections and upload the created template 


         

