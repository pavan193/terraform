variable "instanceName" {
  description = "This variable is to declare instance name"
  type        = string
#   default     = "My Instance - Terraform"
}

variable "ami_id" {
  description = "This the for declaring ami_id"
  type        = string
#   default     = "ami-06067086cf86c58e6"
}

variable "instance_type" {
  description = "This is for declaring instance type"
  type        = string
#   default     = "t3.micro"
}

variable "keypair" {
  description = "This is for selecting key pair"
  type        = string
#   default     = "mykey"
}

variable "ebs_size" {
  description = "This is for EBS volume size"
  type        = number
#   default     = 8
}
