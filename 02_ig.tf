resource "aws_internet_gateway" "smy_ig" {
  vpc_id = aws_vpc.smy_vpc.id

  tags = {
    "Name" = "${var.name}-ig"
  }
}

resource "aws_route_table" "smy_rt" {
  vpc_id = aws_vpc.smy_vpc.id

  route {
      cidr_block = var.cidr_route
      gateway_id = aws_internet_gateway.smy_ig.id
  }

  tags = {
    "Name" = "${var.name}-rt"
  }
}

resource "aws_route_table_association" "smy_igas_pub" {
  count = 2
  subnet_id      = aws_subnet.smy_pub[count.index].id
  route_table_id = aws_route_table.smy_rt.id
}
