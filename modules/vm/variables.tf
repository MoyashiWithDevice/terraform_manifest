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
variable "ip_address"{
  type = string
  default = "dhcp"
}
variable "template_id"{
  type = number
  nullable = true
}
variable "user_data_file_id"{
  type = string
  nullable = true
}
variable "dns_servers"{
  type = list(string)
  default = ["172.31.10.232", "8.8.8.8"]
}
