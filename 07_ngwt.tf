resource "aws_route_table" "smy_ngwrt" {
  vpc_id = aws_vpc.smy_vpc.id
  
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.smy_ngw.id
  }

  tags = {
    "Name" = "smy_ngwrt"
  }
}


  