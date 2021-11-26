resource "aws_subnet" "smy_puba" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "smy-puba"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "smy_pubc" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    "Name" = "smy-pubc"
  }
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "smy_pria" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    "Name" = "smy-pria"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "smy_pric" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.3.0/24"
  tags = {
    "Name" = "smy-pric"
  }
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "smy_pridba" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.4.0/24"
  tags = {
    "Name" = "smy-pridba"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "smy_pridbc" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.5.0/24"
  tags = {
    "Name" = "smy-pridbc"
  }
  availability_zone = "ap-northeast-2c"
}
