# Provision Docker swarm master Node with centos 7.
resource "aws_instance" "swarm-master" {
  ami                    = var.SWARM_AMI_ID
  instance_type          = "t2.micro"
  subnet_id              = var.SUBNETID
  vpc_security_group_ids = [aws_security_group.master-sg.id]
  key_name               = aws_key_pair.swarmKeyPair.key_name
  tags = {
    Name = "swarm-master"
  }

  
  # Connection to execute the file & remote-exec provisioners.
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "centos"
    private_key = file("keys/swarmLaunchKey")
  }

  # Install pywinrm (dependency package to communicate with windows servers).

  provisioner "remote-exec" {
    inline = [
      #"sudo yum update -y",
      "sudo yum install vim -y",
      "sudo yum install wget -y",
      "wget -qO- https://get.docker.com/ | sh",
      "sudo systemctl enable docker",
      "sudo systemctl start docker",
      "sudo useradd -aG docker centos",
      "sudo yum install nc -y",
    ]
  }
}

# # Provision Docker swarm worker Node with centos 7.
# resource "aws_instance" "worker-1" {
#   ami                    = var.SWARM_AMI_ID
#   instance_type          = "t2.micro"
#   subnet_id              = var.SUBNETID
#   vpc_security_group_ids = [aws_security_group.worker-sg.id]
#   key_name               = aws_key_pair.swarmKeyPair.key_name
#   tags = {
#     Name = "worker-1"
#   }

#   # Connection to execute the file & remote-exec provisioners.
#   connection {
#     host        = self.public_ip
#     type        = "ssh"
#     user        = "centos"
#     private_key = file("keys/swarmLaunchKey")
#   }


#   # Install Dependency Packages
#   provisioner "remote-exec" {
#     inline = [
#       #"sudo yum update -y",
#       "sudo yum install vim -y",
#       "sudo yum install wget -y",
#       "wget -qO- https://get.docker.com/ | sh",
#       "sudo systemctl enable docker",
#       "sudo systemctl start docker",
#       "sudo useradd -aG docker centos",
#       "sudo yum install nc -y",
#     ]
#   }
# }

# # Provision Docker swarm worker Node with centos 7.
# resource "aws_instance" "worker-2" {
#   ami                    = var.SWARM_AMI_ID
#   instance_type          = "t2.micro"
#   subnet_id              = var.SUBNETID
#   vpc_security_group_ids = [aws_security_group.worker-sg.id]
#   key_name               = aws_key_pair.swarmKeyPair.key_name
#   tags = {
#     Name = "worker-2"
#   }

#   # Connection to execute the file & remote-exec provisioners.
#   connection {
#     host        = self.public_ip
#     type        = "ssh"
#     user        = "centos"
#     private_key = file("keys/swarmLaunchKey")
#   }

#   # Install Dependency Packages
#   provisioner "remote-exec" {
#     inline = [
#       #"sudo yum update -y",
#       "sudo yum install vim -y",
#       "sudo yum install wget -y",
#       "wget -qO- https://get.docker.com/ | sh",
#       "sudo systemctl enable docker",
#       "sudo systemctl start docker",
#       "sudo useradd -aG docker centos",
#       "sudo yum install nc -y",
#     ]
#   }
# }

