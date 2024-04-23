output "public-ip-address" {
    value = ["${aws_instance.prj-vm.*.public_ip}"]
}