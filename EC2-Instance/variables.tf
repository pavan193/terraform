variable "instance_name" {
  description = "This is display name of server"
  type        = string
  default     = "Terraform-Server"
}

variable "ami_id" {
  description = "This is AMI ID"
  type        = string
  default     = "ami-0567589d25e06853e"
}

variable "instance_type" {
  description = "Instance type default declaration"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "This is key name"
  type        = string
  default     = "mykey"
}

variable "count_var" {
    type = number
    default = 1
}

variable "for_each_var" {
    type = map(string)
    default = {
        frontend = "t3.micro"
        backend  = "t3.micro"
        database = "t3.micro"
    }
  
}
