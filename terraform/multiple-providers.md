## Multiple Providers in Terraform 

We can use multiple providers in one single terraform project.
For example,

- Create a providers.tf file in the root directory of your Terraform project.
- In the providers.tf file, define the AWS and Azure providers. as below,

~~~
provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id = "your-azure-client-id"
  client_secret = "your-azure-client-secret"
  tenant_id = "your-azure-tenant-id"
}
~~~

- In other Terraform configuration files, we can use the aws and azurerm providers to create resources in AWS and Azure, respectively,

~~~
resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

resource "azurerm_virtual_machine" "example" {
  name = "example-vm"
  location = "eastus"
  size = "Standard_A1"
}
~~~