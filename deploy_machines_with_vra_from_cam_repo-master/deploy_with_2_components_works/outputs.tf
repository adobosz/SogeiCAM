
output "ip_address_1" {
  value = "${vra7_deployment.single_vmware_node.resource_configuration.vSphere__vCenter__Machine_1.ip_address}"
  description = "IP address of deployed node"
}

output "ip_address_2" {
  value = "${vra7_deployment.single_vmware_node.resource_configuration.Macchina_vSphere__vCenter__2.ip_address}"
  description = "IP address of deployed node"
}

output "name_1" {
  value = "${vra7_deployment.single_vmware_node.resource_configuration.vSphere__vCenter__Machine_1.name}"
  description = "hostname of deployed node"
}

output "name_2" {
  value = "${vra7_deployment.single_vmware_node.resource_configuration.Macchina_vSphere__vCenter__2.name}"
  description = "hostname of deployed node"
}
