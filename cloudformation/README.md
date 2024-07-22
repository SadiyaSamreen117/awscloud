# Creating CloudFormation Template 

- This is a IaC (Infrastructure as a code tool) from AWS
- By using template, we are going to create a stack the stack is nothing but group of resources.
- The stack can be created by two ways 

   1.We can create a stack using CloudFormation service in AWS

   2.We can create a stack using GitBash by running the necessary commands

## Lets ,first create a stack using CloudFormation service in AWS 

* We can create this template in both JSON and YAML formats to ensure compatibility with various configuration management tools.

* Create a yaml file with the name vpc.yaml

The following is the template to create a stack in YAML format:

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

* After creatng a template go to AWS console and search for CloudFormation service and click 'create stack'

* After selecting the appropriate sections and uploading the created template, the stack will be created.

* The above steps creates a stack in CloudFormation service in AWS

* We can also update and delete the stack.


## Now lets create a stack using GitBash

The first thing we need to do is grant CloudFormation access to the user.

1.The below is the command to create a stack: 
~~~
aws cloudformation create-stack --stack-name <name> --template-body=file://vpc.yaml
~~~

sample output:
~~~
aws cloudformation create-stack --stack-name prod-vc --template-body file://vpc.yaml

{
    "StackId": "arn:aws:cloudformation:us-east-1:637423222170:stack/prod-vpc/59f7b680-478a-11ef-aeb3-0affec6f7741"
}
~~~

2.The below is the command to describe a stack: 
~~~
aws cloudformation describe-stack-events --stack-name prod-vc
~~~

3.The below is the command to delete a stack:
~~~
aws cloudformation delete-stack --stack-name prod-vc
~~~




         

