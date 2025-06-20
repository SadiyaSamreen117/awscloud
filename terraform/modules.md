# Modules 

A module in Terraform is a container for multiple resources that are used together. It is a way to organize and reuse code for managing infrastructure. Every Terraform configuration is part of a module—even a simple configuration in a single `.tf`file is a module (called the root module).

## Key Functions of a modules

- Encapsulation: Groups related resources logically.
- Reusability: Allows you to reuse common configurations.
- Abstraction: Hides implementation details behind inputs and outputs.
- Scalability: Makes infrastructure easier to scale and manage.

## Basic Structure of a Modules 

A module typically includes:

- `main.tf`: Resources and logic
- `variables.tf`: Input variables
- `outputs.tf`: Output values

## Uses of Modules

- Creating reusable building blocks (e.g., VPC, EC2, S3)
- Reducing code duplication
- Improving collaboration and maintenance
- Simplifying complex configurations
- Separating concerns (network, compute, storage in separate modules)

## Advantages of using Modules 

- Reusability: Write once, use in multiple environments (dev, test, prod)
- Consistency: Ensures that infrastructure is deployed in a consistent manner
- Maintainability: Easier to update and manage infrastructure
- Collaboration: Teams can work on different modules independently
- Testing: Individual modules can be tested and verified in isolation
- Cleaner Code: Organizes complex code into manageable parts