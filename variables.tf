variable "PROXMOX_VE_ENDPOINT"{
    type = string
    description = "Proxmox pve-1 host's endpoint"
}
variable "PROXMOX_VE_API_TOKEN"{
    type = string
    sensitive = true
    description = "Proxmox pve-1 host's API Token"
}
variable "PROXMOX_VE_SSH_USERNAME"{
    type = string
    description = "Proxmox pve-1 host's username for creating snippets"
}
variable "PROXMOX_VE_SSH_PASSWORD"{
    type = string
    sensitive = true
    description = "Proxmox pve-1 host's password for creating snippets"
}
variable "VM_USERNAME"{
    type = string
    description = "VM's username for creating snippets"
}
variable "VM_PASSWORD"{
    type = string
    sensitive = true
    description = "VM's password for creating snippets"
}