//-------------------------------------------- lb nodes --------------------------------------------

output "lb_master_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 0)
  description = "IP address of lb_master deployed node"
}

output "lb_master_name_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 0)
  description = "hostname of deployed node"
}

output "lb_master_all" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 0)
  description = "IP address of lb_master deployed node"
}

output "lb_master_all_host" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 0)
  description = "IP address of lb_master deployed node"
}


//-------------------------------------------- master nodes --------------------------------------------

output "master_node_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 1)
  description = "IP address of master_node_1 deployed node"
}

output "master_node_name_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 1)
  description = "hostname of deployed node"
}

output "master_node_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 2)
  description = "IP address of master_node_2 deployed node"
}

output "master_node_name_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 2)
  description = "hostname of deployed node"
}

output "master_node_3" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 3)
  description = "IP address of master_node_3 deployed node"
}

output "master_node_name_3" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name,3)
  description = "hostname of deployed node"
}

output "master_node_all" {
  value = slice(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 1, 4)
  description = "IP address list of master deployed node"
}

output "master_node_all_single_vmware_node_masters_ip_address" {
  value = vra7_deployment.single_vmware_node_masters[0].resource_configuration[*].ip_address
  description = "IP address list of master deployed node"
}
output "master_node_all_single_vmware_node_masters_names" {
  value = vra7_deployment.single_vmware_node_masters[0].resource_configuration[*].name
  description = "IP address list of master deployed node"
}

output "master_node_all_host" {
//if you want use below statement the variable "value" doesn't contain the right ip_address/names
  value =  [element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 1), element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 2),element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 3)]
  description = "hostname list of master deployed node"
}

//-------------------------------------------- infra_nodes --------------------------------------------

output "infra_node_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 4)
  description = "IP address of infra_node deployed node"
}

output "infra_node_name_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 4)
  description = "hostname of deployed node"
}


output "infra_node_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 5)
  description = "IP address of infra_node deployed node"
}

output "infra_node_name_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 5)
  description = "hostname of deployed node"
}

/*
output "infra_node_all" {
  value = slice(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 4, 8)
  description = "IP address list of infra_node deployed node"
}

output "infra_node_all_host" {
  value = slice(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 4, 8)
  description = "IP address list of infra_node deployed node"
}
*/
//-------------------------------------------- worker_nodes --------------------------------------------


output "worker_node_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 6)
  description = "IP address of worker_node deployed node"
}

output "worker_node_name_1" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 6)
  description = "hostname of deployed node"
}

output "worker_node_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 7)
  description = "IP address of worker_node deployed node"
}

output "worker_node_name_2" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 7)
  description = "hostname of deployed node"
}

output "worker_node_3" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 8)
  description = "IP address of worker_node deployed node"
}

output "worker_node_name_3" {
  value = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].name, 8)
  description = "hostname of deployed node"
}


output "array_size" {
  value = length(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address)
  description = "IP address of worker_node deployed node"
}

