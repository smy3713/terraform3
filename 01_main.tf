provider "aws" {
  region = var.region
}

resource "aws_key_pair" "smy_key" {
  key_name   = var.key
  public_key = file("../../.ssh/smy-key.pub")
}

resource "aws_vpc" "smy_vpc" {
  cidr_block           = var.cidr_main
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "${var.name}-vpc"
  }
}

resource "aws_subnet" "smy_pub" {
  count                = length(var.pub_sub) #2
  vpc_id               = aws_vpc.smy_vpc.id
  cidr_block           = var.pub_sub[count.index]                    #index 0 -> 10.0.0.0/24
  tags = {
    "Name" = "${var.name}-pu${var.ava_zone[count.index]}"
  }
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
}

resource "aws_subnet" "smy_pri" {
  count      = 2
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = var.pri_sub[count.index]
  tags = {
    "Name" = "${var.name}-pri${var.ava_zone[count.index]}"
  }
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
}

resource "aws_subnet" "smy_pridb" {
  count      = length(var.pri_subdb) #2
  vpc_id     = aws_vpc.smy_vpc.id
  cidr_block = var.pri_subdb[count.index]
  tags = {
    "Name" = "${var.name}-pridb${var.ava_zone[count.index]}"
  }
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
}

