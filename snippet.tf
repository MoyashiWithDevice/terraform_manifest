resource "proxmox_virtual_environment_file" "user_data_cloud_config" {
  content_type = "snippets"
  datastore_id = "local"
  node_name = "pve-1"

  source_raw {
    data = <<-EOF
    #cloud-config
    timezone: Asia/Tokyo

    ssh_pwauth: true

    users:
      - name: ${var.VM_USERNAME}
        groups:
          - sudo
        shell: /bin/bash
        sudo: ALL=(ALL:ALL) ALL

    chpasswd:
      list: |
        ${var.VM_USERNAME}:${var.VM_PASSWORD}
      expire: false
    package_update: true
    packages:
      - qemu-guest-agent
    runcmd:
      - mkdir -p /etc/ssh
      - curl -o /etc/ssh/trusted-user-ca-keys.pem http://172.31.0.230:8200/v1/ssh-client-signer/public_key
      - echo "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" | tee -a /etc/ssh/sshd_config
      - systemctl restart sshd
    EOF

    file_name = "user-data-cloud-config.yaml"
  }
}