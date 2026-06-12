variable "PROXMOX_VE_ENDPOINT"{
    type = string
    describe = "Proxmox pve-1 host's endpoint"
}
variable "PROXMOX_VE_API_TOKEN"{
    type = string
    sensitive = true
    describe = "Proxmox pve-1 host's API Token"
}
variable "PROXMOX_VE_SSH_USERNAME"{
    type = string
    describe = "Proxmox pve-1 host's username for creating snippets"
}
variable "PROXMOX_VE_SSH_PASSWORD"{
    type = string
    sensitive = true
    describe = "Proxmox pve-1 host's password for creating snippets"
}