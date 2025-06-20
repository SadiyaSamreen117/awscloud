# Varaibles of Terraform

## Input Varaibles 

Input variables allow you to customize your infrastructure deployments by passing values from outside the configuration. They act as parameters that can be set before running Terraform commands like terraform plan or terraform apply, enabling dynamic resource configuration without modifying the core Terraform code. Essentially, they make your configurations reusable and adaptable to different environments. 

~~~
variable "example_var" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}
~~~

In the above example

- variable is used to declare an input variable named `example_var`.
- `description` provides a human-readable description of the variable.
- `type` specifies the data type of the variable (e.g., string, number, list, map, etc.).
- `default` provides a default value for the variable, which is optional.

Below is the example to use the input variable within your module or configuration:

~~~
resource "example_resource" "example" {
  name = var.example_var
  # other resource configurations
}
~~~

## Output Variables

Output variables are used to expose specific data or attributes of your infrastructure after it has been provisioned. They allow you to retrieve and utilize information, such as IP addresses, DNS names, or resource IDs, generated during the infrastructure deployment process. Essentially, they act as return values for Terraform modules, enabling you to share data between modules, interact with external systems, or simply display useful information in the console. 

~~~
output "example_output" {
  description = "An example output variable"
  value       = resource.example_resource.example.id
}
~~~

In the above example

- output is used to declare an output variable named `example_output`.
- `description` provides a description of the output variable.
- `value` specifies the value that you want to expose as an output variable. This value can be a         resource attribute, a computed value, or any other expression.

For example, if you have an output variable named example_output in a module called example_module, you can access it in the root module like this:

~~~
output "root_output" {
  value = module.example_module.example_output
}
~~~

This allows you to share data and values between different parts of your Terraform configuration and create more modular and maintainable infrastructure-as-code setups.