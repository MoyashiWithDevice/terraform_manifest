provider "proxmox"{
    endpoint = var.PROXMOX_VE_ENDPOINT
    api_token = var.PROXMOX_VE_API_TOKEN
    insecure = true

    ssh{
        agent = true
        username = var.PROXMOX_VE_SSH_USERNAME
        password = var.PROXMOX_VE_SSH_PASSWORD

    }

    random_vm_ids = true
}

terraform {
    required_version = ">=1.15"

    required_providers{
        proxmox = {
            source = "bgp/proxmox"
            version = ">=0.109"
        }
    }
}