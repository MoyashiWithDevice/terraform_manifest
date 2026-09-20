resource "proxmox_download_file" "dl_cloud_image"{
  content_type = "import"
  datastore_id = var.img_datastore_id
  file_name = var.file_name
  node_name = var.node_name
  url = var.src_url
  overwrite = true
}

resource "proxmox_virtual_environment_vm" "templates"{
  bios                                 = "seabios"
  boot_order                           = ["scsi0"]
  purge_on_destroy                     = true
  delete_unreferenced_disks_on_destroy = true
  name                                 = var.name
  node_name           = var.node_name
  tags                = var.tags
  template            = true
  vm_id               = var.vm_id
  disk {
    datastore_id      = var.datastore_id
    interface         = "scsi0"
    import_from = proxmox_download_file.dl_cloud_image.id
  }
  initialization {
    datastore_id = var.ide2_datastore_id
  }
}
output "template_id"{
  value = proxmox_virtual_environment_vm.templates.vm_id
}
