resource "aws_internet_gateway" "smy_ig" {
  vpc_id = aws_vpc.smy_vpc.id

  tags = {
    "Name" = "smy-ig"
  }
}