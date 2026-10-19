
resource "aws_instance" "terraform-server" {
  #   Single Instatance using Variable
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = var.key_name
    tags = {
      Name = var.instance_name
    }


  # Multiple Instances using Count

  #   count         = var.count_var
  #   ami           = var.ami_id
  #   instance_type = var.instance_type
  #   key_name      = var.key_name

  #   tags = {
  #     Name = "${var.instance_name}-${count.index}"
  #   }



  # Multiple Instances using For Each

  #   for_each      = var.for_each_var
  #   ami           = var.ami_id
  #   instance_type = each.value
  #   key_name      = var.key_name
  #   tags = {
  #     Name = "${var.instance_name}-${each.key}"
  #   }

  # Multiple Instances using For Each with Hardcoded Values - Overriding Variable

  #   for_each = {
  #     first  = "t3.micro"
  #     second = "t3.micro"
  #     third  = "t3.micro"
  #     fourth = "t3.micro"
  #   }
  #   ami           = var.ami_id
  #   instance_type = each.value
  #   key_name      = var.key_name
  #   tags = {
  #     Name = "${var.instance_name}-${each.key}"
  #   }

}
