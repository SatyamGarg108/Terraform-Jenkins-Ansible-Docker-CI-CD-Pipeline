resource "aws_instance" "prj-vm" {
    ami = var.ami_value
    instance_type = var.instance_type
    count = var.ec2_instance_count
    subnet_id = var.subnet_id_value
    key_name = aws_key_pair.key_pair.key_name
    vpc_security_group_ids = [var.security_group_value]
    tags = {
        Name = "Docker-server-${count.index}"
    }
}

resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.rsa_4096.private_key_pem
  filename = var.key_name
}

resource "null_resource" "run_ansible_playbook" {
  depends_on = [aws_instance.prj-vm]

  provisioner "local-exec" {
  command = "ansible-playbook ../Ansible/nginx_setup.yml -i ../Ansible/inventory.ini"
}

}
