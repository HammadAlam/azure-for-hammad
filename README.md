# Azure FireNet Example

Simple example to spin up azure transit firenet and spoke.

### Software 

Component | Version
--- | ---
Aviatrix Controller | (6.2) UserConnect-6.2.1742 
Aviatrix Terraform Provider | 2.17
Terraform | 0.12

### Modules

Module Name | Version | Description
:--- | :--- | :---
[terraform-aviatrix-modules/azure-transit-firenet/aviatrix](https://registry.terraform.io/modules/tterraform-aviatrix-modules/azure-transit-firenet/aviatrix/2.0.0) | 2.0.0 | This module deploys a VPC, Aviatrix transit gateways and firewall instances
[terraform-aviatrix-modules/azure-spoke/aviatrix](https://registry.terraform.io/modules/terraform-aviatrix-modules/azure-spoke/aviatrix/2.0.0) | 2.0.0 | This module deploys a VNET and an Aviatrix spoke gateway in Azure and attaches it to an Aviatrix Transit Gateway
