# Terraform template that will deploy a single node vRA catalog and execute a remote exec command.

terraform {
  required_version = "> 0.8.0"
}

# Terraform vRA provider
provider "vra7" {
}

# This resource represents a single vRA catalog item and includes the required input properties. 
resource "vra7_deployment" "single_vmware_node" {
  wait_timeout = "${var.single_vmware_node_timeout}"
  catalog_item_name = "RHEL 7.6 - 2 Component"
  resource_configuration {
    vSphere__vCenter__Machine_1.memory = "2048"
    vSphere__vCenter__Machine_1.cpu = "1"
    vSphere__vCenter__Machine_1.ip_address = ""   # Leave blank auto populated by terraform
    vSphere__vCenter__Machine_1.name = ""

  }

  resource_configuration {
    Macchina_vSphere__vCenter__2.memory = "2048"
    Macchina_vSphere__vCenter__2.cpu = "1"
    Macchina_vSphere__vCenter__2.ip_address = ""   # Leave blank auto populated by terraform
    Macchina_vSphere__vCenter__2.name = ""
  }

}

