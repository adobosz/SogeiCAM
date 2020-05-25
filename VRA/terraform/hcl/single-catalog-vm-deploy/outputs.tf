output "vra7_deployment_single_vmware_node1" {
  value       = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 0)
  description = "IP address of deployed node"
}

output "vra7_deployment_single_vmware_node2" {
  value       = element(vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address, 1)
  description = "IP address of deployed node"
}

output "vra7_deployment_single_vmware_node" {
  value       = vra7_deployment.single_vmware_node[0].resource_configuration[*].ip_address
  description = "IP address of deployed node"
}
