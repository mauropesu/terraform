resource "proxmox_vm_qemu" "opensuse-checkmk" {
  vmid = 100  
  name        = "openSUSE-Checkmk"
  target_node = "pveserver1"

  clone = "openSUSE"
  full_clone = false
  bios = "ovmf"
  agent = 1
  scsihw = "virtio-scsi-single"
  cpu_type = "x86-64-v2-AES"
  sockets = 1
  cores = 4
  memory = 4096

  disks {
      scsi {
          scsi0 {
              disk {
                  size = "20"
                  storage = "local"
                  format = "qcow2"
              }
          }
      }
   
  }
}