# output "instance_ip" {
#     description = "This is IP address of instance"
#     value = aws_instance.terraform-server.public_ip
# }

# output "ssh_command" {
#     description = "This is ssh command"
#     value = "ssh -i 'my-key.pem' ec2-user@${aws_instance.terraform-server.public_ip}"
# }