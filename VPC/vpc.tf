resource "aws_vpc" "main_vpc" {
  tags = {
    Name = "Terraform-VPC"
  }

  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  instance_tenancy     = "default"
}
