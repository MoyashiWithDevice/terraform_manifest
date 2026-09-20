module "manage-vm" {
  source         = "./modules/vm"
  vm_name        = "manage-vm"
  tags           = []
  mac_address  = "BC:24:11:62:C1:19"
  vlan_id      = 10
  vm_id        = 119
  processor_cores        = 2
  processor_type         = "qemu64"
  datastore_id      = "local-lvm"
  disk_gb              = 16
  memory_mb = 4096
  template_id = 9000
  dns_servers = ["172.31.10.232"]
  user_data_file_id = proxmox_virtual_environment_file.user_data_cloud_config.id
}
