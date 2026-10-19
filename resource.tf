resource "aws_instance" "my-ec2" {

  tags = {
    Name = var.instanceName
  }
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.keypair

  root_block_device {
    volume_size = var.ebs_size
  }

}
