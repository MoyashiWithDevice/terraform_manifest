resource "proxmox_virtual_environment_vm" "machine-with-cloud-init"{
  acpi                                 = true
  bios                                 = var.bios
  boot_order                           = ["scsi0", "net0"]
  delete_unreferenced_disks_on_destroy = true
  description                          = null
  hook_script_file_id                  = null
  keyboard_layout                      = "en-us"
  kvm_arguments                        = null
  machine                              = null
  migrate                              = false
  name                                 = var.vm_name
  dynamic "efi_disk"{
    for_each = var.bios == "ovmf" ? [1] : []
    content{
      datastore_id = coalesce(var.efi_disk_datastore_id, var.datastore_id)
      pre_enrolled_keys = var.pre_enrolled_keys
      type = var.efi_disk_type
    }
  }
  network_device = [{
    enabled      = true
    bridge       = var.nw_device
    disconnected = false
    firewall     = false
    mac_address  = var.mac_address
    model        = "virtio"
    mtu          = 0
    queues       = 0
    rate_limit   = 0
    trunks       = ""
    vlan_id      = var.vlan_id
  }]
  node_name           = var.node_name
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
  tags                = var.tags
  template            = false
  timeout_clone       = 1800
  timeout_create      = 1800
  timeout_migrate     = 1800
  timeout_reboot      = 1800
  timeout_shutdown_vm = 1800
  timeout_start_vm    = 1800
  timeout_stop_vm     = 300
  vm_id               = var.vm_id
  agent {
    enabled = true
    timeout = "15m"
    trim    = false
    type    = "virtio"
  }
  cpu {
    affinity     = null
    architecture = null
    cores        = var.processor_cores
    flags        = []
    hotplugged   = 0
    limit        = 0
    numa         = false
    sockets      = 1
    type         = var.processor_type
    units        = 1
  }
  disk {
    aio               = "io_uring"
    backup            = true
    cache             = "none"
    datastore_id      = var.datastore_id
    discard           = "ignore"
    file_format       = "raw"
    file_id           = null
    import_from       = null
    interface         = "scsi0"
    iothread          = true
    queues            = 0
    replicate         = true
    serial            = null
    size              = var.disk_gb
    ssd               = false
  }
  memory {
    dedicated      = var.memory_mb
    floating       = var.memory_mb
    hugepages      = null
    keep_hugepages = false
    shared         = 0
  }
  operating_system {
    type = "l26"
  }
  startup {
    down_delay = -1
    order      = 0
    up_delay   = -1
  }
  dynamic "clone"{
    for_each = var.template_id == null ? [] : [1]
    content {
      vm_id = var.template_id
    }
  }
  dynamic "initialization"{
    for_each = var.user_data_file_id == null ? [] : [1]
    content{
      ip_config{
        ipv4{
          address = var.ip_address
        }
      }
      dns{
        servers = var.dns_servers
      }
      user_data_file_id = var.user_data_file_id
    }
  }
}
