output "vm_name"{
  value = proxmox_virtual_environment_vm.machine-with-cloud-init.name
}
output "ipv4_addresses"{
  value = proxmox_virtual_environment_vm.machine-with-cloud-init.ipv4_addresses[0][0]
}
output "ipv6_addresses"{
  value = proxmox_virtual_environment_vm.machine-with-cloud-init.ipv6_addresses[0][0]
}
