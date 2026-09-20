variable "file_name"{
  type = string
  nullable = true
  
  validation {
    condition = (var.file_name == null
      || can(regex("\\.(img|qcow2)$", var.file_name)))
    error_message = "You need to specify '.img' or '.qcow2'."
  }
}
variable "img_datastore_id"{
  type = string
  default = "local"
}
variable "src_url"{
  type = string
  nullable = false
  
  validation{
    condition = can(regex("\\.(img|qcow2)$", var.src_url))
    error_message = "You can download cloud-image files only '.img' or 'qcow2'."
  }
}
variable "name"{
  type = string
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
variable "datastore_id"{
  type = string
  default = "local-lvm"
}
variable "ide2_datastore_id"{
  type = string
  default = "local"
}
