qm create 8001 --memory 2048 --core 2 --name ubuntu-cloud --net0 virtio,bridge=vmbr0

qm importdisk 8001 jammy-server-cloudimg-amd64.img fast

qm set 8001 --scsihw virtio-scsi-pci --scsi0 fast:vm-8001-disk-0

qm set 8001 --ide2 fast:cloudinit

qm set 8001 --boot c --bootdisk scsi0

qm set 8001 --serial0 socket --vga serial0

qm set 8001 --sshkeys ./sshkeys

qm template 8001