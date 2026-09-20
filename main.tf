# Snippet Definition
module "cloud_config_snippet"{
  source = "./modules/snippet"
  file_name = "default_script.yaml"
  users = [
    {
      name = var.VM_USERNAME,
      password = var.VM_PASSWORD,
      groups = ["sudo"],
      shell = "/bin/bash",
      sudo = "ALL=(ALL:ALL) ALL"
    }
  ]
  packages = ["qemu-guest-agent"]
  runcmd = [
    "mkdir -p /etc/ssh",
    "curl -o /etc/ssh/trusted-user-ca-keys.pem -k https://vault.local.newvia.net:8200/v1/ssh-client-signer/public_key",
    "echo 'TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem' | tee -a /etc/ssh/sshd_config",
    "systemctl try-restart ssh || true",
    "systemctl try-restart sshd || true"
  ]
}

# Template Definition
module "ubuntu_2604_template"{
  source = "./modules/template"
  content_type = "import"
  file_name = "resolute-server-cloudimg-amd64.qcow2"
  src_url = "https://cloud-images.ubuntu.com/resolute/current/resolute-server-cloudimg-amd64.img"
  tags = ["template"]
  vm_id = 9000
  ide2_datastore_id = "data"
}

# VM Definition
module "kube-1" {
  source         = "./modules/vm"
  vm_name        = "kube-1"
  tags           = ["kubernetes"]
  mac_address  = "BC:24:11:62:C1:00"
  vlan_id      = 10
  vm_id        = 100
  processor_cores        = 3
  processor_type         = "host"
  datastore_id      = "fast-local-lvm"
  disk_gb              = 64
  memory_mb = 8192
}
module "kube-2" {
  source         = "./modules/vm"
  vm_name        = "kube-2"
  tags           = ["kubernetes"]
  mac_address  = "BC:24:11:62:C1:17"
  vlan_id      = 10
  vm_id        = 117
  processor_cores        = 3
  processor_type         = "host"
  datastore_id      = "fast-local-lvm"
  disk_gb              = 64
  memory_mb = 8192
}
module "kube-3" {
  source         = "./modules/vm"
  vm_name        = "kube-3"
  tags           = ["kubernetes"]
  mac_address  = "BC:24:11:62:C1:18"
  vlan_id      = 10
  vm_id        = 118
  processor_cores        = 3
  processor_type         = "host"
  datastore_id      = "fast-local-lvm"
  disk_gb              = 64
  memory_mb = 8192
}
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
  template_id = module.ubuntu_2604_template.template_id
  dns_servers = ["172.31.10.232"]
  user_data_file_id = module.cloud_config_snippet.snippet-file-id
}
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
  template_id = module.ubuntu_2604_template.template_id
  dns_servers = ["172.31.10.232"]
  user_data_file_id = module.cloud_config_snippet.snippet-file-id
}
