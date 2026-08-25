resource "proxmox_virtual_environment_vm" "vm" {
  for_each = var.vms

  name      = each.value.name
  vm_id     = each.value.vmid
  node_name = var.target_node

  description = "Ubuntu VM managed by OpenTofu"

  started         = true
  stop_on_destroy = true


  clone {
    vm_id = 9000
  }

  cpu {
    cores = 2
  }

  memory {
    dedicated = 3048
  }


  scsi_hardware = "virtio-scsi-pci"


  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 20
  }


  serial_device {
    device = "socket"
  }


  network_device {
    bridge      = "vmbr0"
    mac_address = each.value.mac_address
  }


  operating_system {
    type = "l26"
  }


  initialization {
    user_account {

      username = "ubuntu"

      keys = [
        var.ssh_public_key
      ]
    }

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }
}