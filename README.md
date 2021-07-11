# Terraform Cloud 

This is Terraform configuration for my project.

## What will this do?

This is a Terraform configuration that will create someshi in my Azure account. 

When you set up a Workspace on Terraform Cloud, you can link to this repository. Terraform Cloud can then run `terraform plan` and `terraform apply` automatically when changes are pushed. For more information on how Terraform Cloud interacts with Version Control Systems, see [our VCS documentation](https://www.terraform.io/docs/cloud/run/ui.html).

## What are the prerequisites?
Create a service principal and configure its access to Azure resources.
Create with a Contributor role assignments on specified scope.

az ad sp create-for-rbac --role Contributor --scopes /subscriptions/{SubID}

client_id = appId
client_secret = password
tenant_id = tenant 


