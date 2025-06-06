# Terraform Installation 

## Windows

- Install Terraform from the downloads [ page ](https://developer.hashicorp.com/terraform/install)

## Linux

- Follow the steps provided in the Downloads [ page ](https://developer.hashicorp.com/terraform/install) for Linux.

## macOS

- Follow the steps provided in the Downloads [ page ](https://developer.hashicorp.com/terraform/install)



# Settingup Terraform for AWS 

To configure AWS credentials and set up Terraform to work with AWS, you'll need to follow these steps:

1. **Install AWS CLI (Command Line Interface):**

We can Download and Install AWS CLI form the following [ link ](https://aws.amazon.com/cli/) 

2. **Create an AWS IAM User:**

To interact with AWS programmatically, we need to create an IAM (identity Access Management ) user from AWS Console with proper permissions.
The following are the steps to create IAM user.

a. Log in to the AWS Management Console with an account that has administrative privileges.

b. Navigate to the IAM service.

c. Click on "Users" in the left navigation pane and then click "Add user."

- Choose a username, select "Programmatic access" as the access type, and click "Next: Permissions."

- Attach policies to this user based on your requirements. At a minimum, you should attach the "AmazonEC2FullAccess" policy for basic EC2 operations. If you need access to other AWS services, attach the relevant policies accordingly.

- Review the user's configuration and create the user. Be sure to save the Access Key ID and Secret Access Key that are displayed after user creation.

3. **Configure AWS CLI Credentials:**

use the AWS CLI to configure your credentials. Open a terminal and run the following command:
``` 
aws configure
```

It will prompt you to enter your AWS Access Key ID, Secret Access Key, default region, and default output format. Enter the credentials you obtained in the previous step.