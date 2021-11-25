resource "aws_route_table" "smy_rt" {
  vpc_id = aws_vpc.smy_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.smy_ig.id
  }

  tags = {
    "Name" = "smy-rt"
  }
}