# __generated__ by Terraform
resource "proxmox_virtual_environment_vm" "template_9000" {
  acpi                                 = true
  bios                                 = "seabios"
  boot_order                           = ["scsi0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  machine                              = null
  migrate                              = false
  name                                 = "ubuntu-template"
  network_device = [{
    enabled      = true
    bridge       = "vmbr0"
    disconnected = false
    firewall     = false
    mac_address  = "BC:24:11:62:90:00"
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = 0
  }]
  node_name           = "pve-1"
  on_boot             = true
  pool_id             = null
  protection          = false
  purge_on_destroy    = true
  reboot              = false
  reboot_after_update = false
  scsi_hardware       = "virtio-scsi-pci"
  started             = false
  stop_on_destroy     = false
  tablet_device       = true
  tags                = []
  template            = true
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 9000
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = "local-lvm"
    discard           = "on"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = false
    path_in_datastore = "base-9000-disk-0"
    queues            = 0
    replicate         = true
    serial            = null
    size              = 5
    ssd               = false
  }
  initialization {
    datastore_id = "local-lvm"
    interface    = "ide2"
    upgrade      = true
  }
  memory {
    dedicated      = 512
    floating       = 512
    hugepages      = null
    shared         = 0
  }
  operating_system {
    type = null
  }
}