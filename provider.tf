provider "proxmox-pve-1"{
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