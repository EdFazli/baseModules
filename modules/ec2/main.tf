
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
  
  for_each               = var.instances

  name                   = each.value.name
  instance_count         = each.value.instance_count
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  key_name               = each.value.key_name
  monitoring             = each.value.monitoring
  vpc_security_group_ids = each.value.vpc_security_group_ids
  subnet_id              = each.value.subnet_id
  iam_instance_profile   = each.value.iam_instance_profile

  tags                   = each.value.tags

  root_block_device      = each.value.root_block_device
  ebs_block_device       = each.value.ebs_block_device


}


