resource "aws_subnet" "sdkim_puba" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "sdkim-puba"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "sdkim_pubc" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    "Name" = "sdkim-pubc"
  }
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "sdkim_pria" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    "Name" = "sdkim-pria"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "sdkim_pric" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.3.0/24"
  tags = {
    "Name" = "sdkim-pric"
  }
  availability_zone = "ap-northeast-2c"
}

resource "aws_subnet" "sdkim_pridba" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.4.0/24"
  tags = {
    "Name" = "sdkim-pridba"
  }
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "sdkim_pridbc" {
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = "10.0.5.0/24"
  tags = {
    "Name" = "sdkim-pridbc"
  }
  availability_zone = "ap-northeast-2c"
}
