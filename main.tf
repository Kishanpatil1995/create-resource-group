# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = "afe50e4c-141c-4971-8601-917c6a4da438"
  client_id       = "cdcb390c-687c-4ec9-93ff-873d8665e018"
  client_secret   = "akdskasdbdbd"
  tenant_id       = "b9cae6db-1e49-4e86-a3f2-9db6db29a985"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp"{
  name="app_demo" 
  location="East US"
}
