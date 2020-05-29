# Terraform template that will deploy a single node vRA catalog and execute a remote exec command.

terraform {
  required_version = ">= 0.12"
}

# Terraform vRA provider
provider "vra7" {
}

# This resource represents a single vRA catalog item and includes the required input properties.
resource "vra7_deployment" "single_vmware_node" {
  count             = 1
  wait_timeout      = var.single_vmware_node_timeout
  catalog_item_name = "Cluster OpenShift MCM"


  resource_configuration {
    cluster = 1  
    component_name = "lb_master"
  }

  resource_configuration {
      component_name = "lb_infra"
      configuration = {
          nomeServizioHaProxy = "prova"
      }
  }
   resource_configuration {
    cluster = 3 
    component_name = "master_nodes"
  }

  resource_configuration {
    cluster = 2   
    component_name = "infra_nodes"
  }

   resource_configuration {
    cluster = 3 
    component_name = "worker_nodes"
  }
}