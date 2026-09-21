variable "tz"{
  type = string
  default = "Asia/Tokyo"
}
variable "ssh_pwauth"{
  type = bool
  default = false
}
variable "users"{
  type = list(object({
    name = string
    password = string
    groups = list(string)
    shell = string
    sudo = string
  }))
}
variable "packages"{
  type = list(string)
  default = ["qemu-guest-agent"]
}
variable "node_name"{
  type = string
  default = "pve-1"
}
variable "datastore_id"{
  type = string
  default = "local"
}
variable "runcmd"{
  type = list(string)
  default = []
}
