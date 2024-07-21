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
sample output:

~~~
 {
       "Vpc": {
           "CidrBlock": "10.0.0.0/16",
           "DhcpOptionsId": "dopt-5EXAMPLE",
           "State": "pending",
           "VpcId": "vpc-0a60eb65b4EXAMPLE",
           "OwnerId": "123456789012",
           "InstanceTenancy": "default",
           "Ipv6CidrBlockAssociationSet": [],
           "CidrBlockAssociationSet": [
               {
                   "AssociationId": "vpc-cidr-assoc-07501b79ecEXAMPLE",
                   "CidrBlock": "10.0.0.0/16",
                   "CidrBlockState": {
                       "State": "associated"
                   }
               }
           ],
           "IsDefault": false,
           "Tags": [
               {
                   "Key": "Name",
                   "Value": MyVpc"
               }
           ]
       }
   }
~~~