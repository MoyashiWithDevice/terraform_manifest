variable "vm_name"{
  type = string
  nullable = false
}
variable "nw_device"{
  type = string
  default = "vmbr0"
}
variable "vlan_id"{
  type = number
  nullable = false
}
variable "node_name"{
  type = string
  default = "pve-1"
}
variable "tags"{
  type = list(string)
  default = []
}
variable "vm_id"{
  type = number
  nullable = false
}
variable "processor_cores"{
  type = number
  default = 2
}
variable "processor_type"{
  type = string
  default = "qemu64"
}
variable "datastore_id"{
  type = string
  default = "data"
}
variable "bios"{
  type = string
  default = "seabios"
}
variable "efi_disk_datastore_id"{
  type = string
  default = "data"
}
variable "efi_disk_type"{
  type = string
  default = "2m"
}
variable "pre_enrolled_keys"{
  type = bool
  default = false
}
variable "disk_gb"{
  type = number
  default = 16
}
variable "memory_mb"{
  type = number
  default = 2048
}
variable "mac_address"{
  type = string
  nullable = false
}
variable "VM_USERNAME"{
  type = string
  default = "user"
}
variable "VM_PASSWORD"{
  type = string
  default = "password"
}
variable "VM_PUBKEY"{
  type = string
  default = ""
}
variable "ip_address"{
  type = string
  default = "dhcp"
}
variable "template_id"{
  type = number
  default = null
}
variable "dns_servers"{
  type = list(string)
  default = ["172.31.10.232", "8.8.8.8"]
}
