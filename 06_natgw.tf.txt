resource "aws_eip" "smy_ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "smy_ngw" {
  allocation_id = aws_eip.smy_ngw_ip.id
  subnet_id = aws_subnet.smy_puba.id
  tags = {
    "Name" = "smy-ngw"
  }
}
