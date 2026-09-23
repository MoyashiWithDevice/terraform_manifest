variable "tz"{
  type = string
  default = "Asia/Tokyo"
}
variable "ssh_pwauth"{
  type = bool
  default = false
}
variable "node_name"{
  type = string
  default = "pve-1"
}
variable "datastore_id"{
  type = string
  default = "local"
}
