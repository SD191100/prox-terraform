resource "proxmox_vm_qemu" "serv-demo-1" {
    name = "serv-demo-1"
    desc = "Rocky"
    vmid = 9002
    target_node = "prox"

    agent = 1
    clone = "test"
    cores = 2
    cpu = "host"
    sockets = 1
    memory = 2048

    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    disk {
        size = "20G"
        type = "virtio"
        storage = "local"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.1.92/24,gw=192.168.1.1"
    nameserver = "192.168.1.50"
    sshkeys = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHSEZdybTYFues6AFiquUFkRjc+LQRQp0arTCuEeCckm home-lab-keys"
    ciuser = "tanjiro"
}