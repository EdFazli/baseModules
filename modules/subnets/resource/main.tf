resource "aws_subnet" "public" {
  count = length(var.public_subnets) > 0? length(var.public_subnets) : 0

  vpc_id     = aws_vpc.this.*.id
  cidr_block = element(concat(var.public_subnets, [""]), count.index)

  tags       = {
                "Name" = format(
                  "%s-PUBLIC-%s",
                  element(var.public_subnets_name, count.index),
                  element(var.azs, count.index)
                )
               }

}

resource "aws_subnet" "private" {
  count = length(var.private_subnets) > 0? length(var.private_subnets) : 0

  vpc_id     = aws_vpc.this.*.id
  cidr_block = element(concat(var.private_subnets, [""]), count.index)

  tags       = {
                "Name" = format(
                  "%s-PUBLIC-%s",
                  element(var.private_subnets_name, count.index),
                  element(var.azs, count.index)
                )
               }
               
}