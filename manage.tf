
resource "proxmox_virtual_environment_vm" "vm_119" {
  clone{
    vm_id = proxmox_virtual_environment_vm.template_9000.vm_id
  } 
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
  name                                 = "manage-vm"
  network_device = [{
    enabled      = true
    bridge       = "vmbr0"
    disconnected = false
    firewall     = true
    model        = "virtio"
    mac_address  = "BC:24:11:62:C1:19"
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
  tags                = []
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = 119
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = 2
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
    datastore_id      = "local-lvm"
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    queues            = 0
    replicate         = true
    serial            = null
    size              = 16
    ssd               = false
  }
  memory {
    dedicated      = 4096
    floating       = 4096
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  initialization{
    ip_config{
      ipv4{
        address = "dhcp"
      }
    }
    dns{
      servers = ["172.31.10.232"]
    }
    user_data_file_id = proxmox_virtual_environment_file.user_data_cloud_config.id
  }
}
