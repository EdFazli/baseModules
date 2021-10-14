## Custom Variables

variable "instances" {
  type = any
}

variable "ami" {
  type = map(any)
  default = {
    windows = data.aws_ami.amazon_cis_windows.id
    ubuntu  = data.aws_ami.amazon_ubuntu.id
  }
}