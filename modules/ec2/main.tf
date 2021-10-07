terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

data "aws_ami" "amazon_cis_windows" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "manifest-location"
    values = ["amazon/Windows_Server-2019-English-Full-Base*"]
  }
  filter {
    name = "platform"
    values = ["windows"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  tags = {
    "Terraform" = "TRUE"
    "Budget Sub-Code" = "6-0418-11"
  }
}

data "aws_ami" "amazon_ubuntu" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "manifest-location"
    values = ["099720109477/ubuntu/images/hvm-ssd/ubuntu*"]
  }
  filter {
    name = "platform"
    values = ["Linux/UNIX"]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  tags = {
    "Terraform" = "TRUE"
    "Budget Sub-Code" = "6-0418-11"
  }

}

module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"
  
  for_each = var.instances

  name                   = lookup(each.value, "name", null)
  instance_count         = lookup(each.value, "instance_count", null)
  ami                    = lookup(each.value, "ami", null)
  instance_type          = lookup(each.value, "instance_type", null)
  key_name               = lookup(each.value, "key_name", null)
  monitoring             = false
  vpc_security_group_ids = each.value.security_groups
  subnet_id              = lookup(each.value, "subnet_id", null)

  tags = each.value.ec2_tags
}

variable "instances" {
  type = any
}

