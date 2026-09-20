moved{
  from = proxmox_virtual_environment_vm.vm_100
  to   = module.kube-1.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
moved{
  from = proxmox_virtual_environment_vm.vm_117
  to   = module.kube-2.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
moved{
  from = proxmox_virtual_environment_vm.vm_118
  to   = module.kube-3.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
moved{
  from = proxmox_virtual_environment_vm.vm_111
  to   = module.git-lab.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
moved{
  from = proxmox_virtual_environment_vm.vm_120
  to   = module.ldap.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
moved{
  from = proxmox_virtual_environment_vm.vm_119
  to   = module.manage-vm.proxmox_virtual_environment_vm.machine-with-cloud-init 
}
