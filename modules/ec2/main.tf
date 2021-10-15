
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

  name                   = lookup(instances.value, "ec2_name", null)
  instance_count         = lookup(instances.value, "ec2_instance_count", null)
  ami                    = lookup(instances.value, "ec2_ami", null)
  instance_type          = lookup(instances.value, "ec2_instance_type", null)
  key_name               = lookup(instances.value, "ec2_key_name", null)
  monitoring             = lookup(instances.value, "ec2_monitoring", false)
  vpc_security_group_ids = lookup(instances.value, "ec2_security_groups", default)
  subnet_id              = lookup(instances.value, "ec2_subnet_id", null)
  iam_instance_profile   = lookup(instances.value, "ec2_iam_instance_profile", null)

  tags                   = lookup(instances.value, "ec2_tags", null)

  root_block_device      = lookup(instances.value, "ec2_root_block_device", default)
  ebs_block_device       = lookup(instances.value, "ec2_ebs_block_device", null)


}


