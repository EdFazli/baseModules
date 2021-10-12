module "key-pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "1.0.0"
  
  key_name   = var.keypair_name
  public_key = tls_private_key.this.public_key_openssh

  tags       = var.keypair_tags 
}