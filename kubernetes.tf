# __generated__ by Terraform
resource "proxmox_virtual_environment_vm" "vm_100" {
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
  name                                 = "kube-1"
  network_device = [{
    enabled      = true
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false
    mac_address  = "BC:24:11:62:C1:00"
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
  tags                = ["kubernetes"]
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 100
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 3
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "host"
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "fast-local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-100-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 64
    ssd               = false
  }
  memory {
    dedicated      = 8192
    floating       = 8192
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 2
    up_delay   = -1
  }
}

# __generated__ by Terraform
resource "proxmox_virtual_environment_vm" "vm_117" {
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
  name                                 = "kube-2"
  network_device = [{
    enabled      = true
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false
    mac_address  = "BC:24:11:62:C1:17"
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
  tags                = ["kubernetes"]
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 117
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 3
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "host"
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "fast-local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-117-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 64
    ssd               = false
  }
  memory {
    dedicated      = 8192
    floating       = 8192
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 3
    up_delay   = -1
  }
}

# __generated__ by Terraform
resource "proxmox_virtual_environment_vm" "vm_118" {
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
  name                                 = "kube-3"
  network_device = [{
    enabled      = true
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false
    mac_address  = "BC:24:11:62:C1:18"
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
  tags                = ["kubernetes"]
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 118
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 3
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = "host"
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "fast-local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    path_in_datastore = "vm-118-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 64
    ssd               = false
  }
  memory {
    dedicated      = 8192
    floating       = 8192
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 4
    up_delay   = -1
  }
}
