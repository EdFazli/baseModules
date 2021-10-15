## Custom Variables

variable "instances" {
  type = any
}

variable "ec2_name" {
  type = string
}

variable "ec2_instance_count" {
  type = number
}

variable "ec2_ami" {
  type = map(any)
  default = {
    windows = data.aws_ami.amazon_cis_windows.id
    ubuntu  = data.aws_ami.amazon_ubuntu.id
  }
}

variable "ec2_instance_type" {
  type = string
}

variable "ec2_key_name" {
  type = string
}

variable "ec2_monitoring" {
  type = bool
}

variable "ec2_security_groups" {
  type = list(string)
}

variable "ec2_subnet_id" {
  type = string
}

variable "ec2_iam_instance_profile" {
  type = string
}

variable "ec2_tags" {
  type = any
}

variable "ec2_root_block_device" {
  type = any
}

variable "ec2_ebs_block_device" {
  type = any
}