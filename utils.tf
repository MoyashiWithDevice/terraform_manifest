# __generated__ by Terraform
resource "proxmox_virtual_environment_vm" "vm_111" {
  acpi                                 = true
  bios                                 = "seabios"
  boot_order                           = ["scsi0", "net0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  machine                              = null
  migrate                              = false
  name                                 = "Git-Lab"
  network_device = [{
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false 
    mac_address  = "BC:24:11:62:C1:11"
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = 20
  }]
  node_name           = "pve-1"
  on_boot             = true
  pool_id             = null
  protection          = false
  purge_on_destroy    = true
  reboot              = false
  reboot_after_update = false
  scsi_hardware       = "virtio-scsi-single"
  started             = true
  stop_on_destroy     = false
  tablet_device       = true
  tags                = ["git-lab"]
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 111
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 5
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "qemu64"
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "data"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-111-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 32
    ssd               = false
  }
  memory {
    dedicated      = 12288
    floating       = 12288
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 5
    up_delay   = -1
  }
}

resource "proxmox_virtual_environment_vm" "vm_120" {
  acpi                                 = true
  bios                                 = "seabios"
  boot_order                           = ["scsi0", "net0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  machine                              = null
  migrate                              = false
  name                                 = "LDAP"
  network_device = [{
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false
    mac_address  = "BC:24:11:62:C1:20"
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = 10
  }]
  node_name           = "pve-1"
  on_boot             = true
  pool_id             = null
  protection          = false
  purge_on_destroy    = true
  reboot              = false
  reboot_after_update = false
  scsi_hardware       = "virtio-scsi-single"
  started             = true
  stop_on_destroy     = false
  tablet_device       = true
  tags                = ["LDAP"]
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 120
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 5
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "qemu64"
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "data"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    queues            = 0
    replicate         = true
    serial            = null
    size              = 64
    ssd               = false
  }
  memory {
    dedicated      = 12288
    floating       = 12288
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 5
    up_delay   = -1
  }
}
