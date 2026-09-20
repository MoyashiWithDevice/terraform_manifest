module "git-lab" {
  source         = "./modules/vm"
  vm_name        = "Git-Lab"
  tags           = ["git-lab"]
  mac_address  = "BC:24:11:62:C1:11"
  vlan_id      = 20
  vm_id        = 111
  processor_cores        = 5
  processor_type         = "qemu64"
  datastore_id      = "data"
  disk_gb              = 32
  memory_mb = 12288
}

module "ldap" {
  source         = "./modules/vm"
  vm_name        = "LDAP"
  tags           = ["LDAP"]
  mac_address  = "BC:24:11:62:C1:20"
  vlan_id      = 10
  vm_id        = 120
  processor_cores        = 3
  processor_type         = "qemu64"
  datastore_id      = "data"
  disk_gb              = 32
  memory_mb = 4096
  template_id = 9000
  dns_servers = ["172.31.10.232"]
  user_data_file_id = proxmox_virtual_environment_file.user_data_cloud_config.id
}
