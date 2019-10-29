output "master_pub_ip" {
  value = aws_instance.swarm-master.*.public_ip
}

output "master_priv_ip" {
  value = aws_instance.swarm-master.*.private_ip
}

output "worker1_pub_ip" {
  value = aws_instance.worker-1.*.public_ip
}

output "worker1_priv_ip" {
  value = aws_instance.worker-1.*.private_ip
}

# output "worker2_pub_ip" {
#   value = aws_instance.worker-2.*.public_ip
# }

# output "worker2_priv_ip" {
#   value = aws_instance.worker-2.*.private_ip
# }

