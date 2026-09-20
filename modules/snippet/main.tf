resource "proxmox_virtual_environment_file" "cloud_config_snippet"{
  content_type = "snippets"
  datastore_id = var.datastore_id
  node_name = var.node_name

  source_raw {
    data = yamlencode({
      #cloud-config
      timezone = var.tz
      ssh_pwauth = var.ssh_pwauth

      users = [for u in var.users :{
        name = u.name
        groups = u.groups
        shell = u.shell
        sudo = u.sudo
      }]
      chpasswd = {
        list = join("\n", [for u in var.users : "${u.name}:${u.password}"])
        expire = false
      }
      package_update = true
      packages = var.packages
      runcmd = var.runcmd
    })
    file_name = var.file_name
  }
}
output "snippet-file-id"{
  value = proxmox_virtual_environment_file.cloud_config_snippet.id
}
