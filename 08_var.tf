variable "region" {
  type    = string
  default = "ap-northeast-2"
}

variable "name" {
  type    = string
  default = "smy"
}

variable "key" {
  type    = string
  default = "smy1_key"
}

variable "ava_zone" {
  type    = list(any)
  default = ["a", "c"]
}
variable "cidr_main" {
  type    = string
  default = "10.0.0.0/16"
}

variable "pub_sub" {
  type    = list(any)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "pri_sub" {
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "pri_subdb" {
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "cidr_route" {
  type = string
  default = "0.0.0.0/0"
}

variable "private_ip" {
  type = string
  default = "10.0.0.11"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "storage_type" {
  type = string
  default = "gp2"
}
variable "cidr_routev6" {
  type = string
  default = "::/0"
}

variable "all" {
  type = string
  default = "all"
}

variable "ssh" {
  type = string
  default = "ssh"
}

variable "http" {
  type = string
  default = "http"
}

variable "icmp" {
  type = string
  default = "icmp"
}

variable "mysql" {
  type = string
  default = "mysql"
}

variable "port_ssh" {
  type = number
  default = 22
}

variable "port_http" {
  type = number
  default = 80
}

variable "port_mysql" {
  type = number
  default = 3306
}

variable "port_zero" {
  type = number
  default = 0
}

variable "minus" {
  default = -1
}

variable "pro_tcp" {
  type = string
  default = "tcp"
}

variable "pro_icmp" {
  type = string
  default = "icmp"
}

variable "pro_udp" {
  type = string
  default = "udp"
}

variable "nul" {
  default = null
}

variable "HTTP" {
  type = string
  default = "HTTP"
}