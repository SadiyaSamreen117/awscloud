## Multiple regions in terraform

we can create multiple regions in terraform by using `alias` keyword.

```
provider "aws" {
    alias = "us-east-1"
    region= "us-east-1"
}

provider "aws" {
    alias = "us-west-2"
    region= "us-west-2"
}

resource "aws-instance" "sample1"{
    ami           = "ami-0123456789abcdef0"
    instance-type = "t2.micro"
    provider      = "aws.us-east-1"
}

resource "aws-instance" "sample2"{
    ami           = "ami-0123456789abcdef0"
    instance-type = "t2.micro"
    provider      = "aws.us-west-2"
}
```