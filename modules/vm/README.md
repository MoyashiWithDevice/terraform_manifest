# Variables
### vm_name(Require)
Name of the vm.

### vm_id
ID used by Proxmox and assigned to the vm.
e.g. 100, 200, 9999

### tags
Tags assigned to the vm.
List type

### vlan_id(Require)
vlan ID assigned to the vm.
e.g. 10, 20, 30, 100

### node_name
Name of the node to which the vm is assigned.
e.g. pve-1(default)

### datastore_id
Datastore storing the vm data.
e.g. data, local, local-lvm

### processors_cores
Number of CPU cores assigned to the vm.

### processors_type
Type of CPU assigned to the vm.
e.g. qemu64(default), kvm64, host

### disk_gb
Size of the disk attached to the vm. (Unit: GB)

### memory_mb
Size of the memory attached to the vm. (Unit: MB)

### nw_device
Network interface attached to the vm.
e.g. vmbr0(default), bond0, nic0

### mac_address
e.g. BC:24:11:62:C1:00(vm_id: 100), BC:24:11:62:99:99(vm_id: 9999)

### ip_address
e.g. dhcp(default), 10.0.0.1, 172.31.0.100

### template_id
Enables template cloning if set.
e.g. 9000

### user_data_file_id
Enables cloud-init execution if set.
e.g. proxmox_virtual_environment_file.user_data_cloud_config.id

### dns_servers
e.g. \["172.31.10.232", "8.8.8.8"\](default)
