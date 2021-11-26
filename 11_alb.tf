resource "aws_lb" "smy_alb" {
  name = "smy-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.smy_sg.id]
  subnets = [aws_subnet.smy_puba.id,aws_subnet.smy_pubc.id]
  tags = {
    "Name" = "smy-alb"
  }
}