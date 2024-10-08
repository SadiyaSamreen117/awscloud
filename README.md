# This is the GitHub Repository to showcase my work on AWS
## Chapter 1: AWS CLI/CloudFormation

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
        "DhcpOptionsId": "dopt-0c954d5a3d9647919",
        "State": "pending",
        "VpcId": "vpc-02bffcb50ac5f9585",
        "OwnerId": "12345678912",
        "InstanceTenancy": "default",
        "Ipv6CidrBlockAssociationSet": [],
        "CidrBlockAssociationSet": [
            {
                "AssociationId": "vpc-cidr-assoc-09332dda6f059df6c",
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
                "Value": "MyVpc"
            }
        ]
    }
}

~~~

The above command shows the VPC state in pending,to check the VPC state later,please use the below command:

~~~
aws ec2 describe-vpcs --vpc-ids <vpc-id>
~~~

sample output:
~~~
aws ec2 describe-vpcs --vpc-ids vpc-0bf65d5df2209441d

{
    "Vpcs": [
        {
            "CidrBlock": "10.0.0.0/16",
            "DhcpOptionsId": "dopt-0c954d5a3d9647919",
            "State": "available",
            "VpcId": "vpc-0bf65d5df2209441d",
            "OwnerId": "12345678912",
            "InstanceTenancy": "default",
            "CidrBlockAssociationSet": [
                {
                    "AssociationId": "vpc-cidr-assoc-08ccc642b80a25da4",
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
                    "Value": "MyVpc"
                }
            ]
        }
    ]
}
~~~

2.The below is the command to delete the VPC

~~~
aws ec2 delete-vpcs --vpc-id <vpc-id>
~~~