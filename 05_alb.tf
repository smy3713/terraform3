resource "aws_lb" "smy_alb" {
  name = "${var.name}-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.smy_sg.id]
  subnets = [aws_subnet.smy_pub[0].id,aws_subnet.smy_pub[1].id]
  tags = {
    "Name" = "${var.name}-alb"
  }
}

output "dns_name" {
  value = aws_lb.smy_alb.dns_name
}

resource "aws_lb_target_group" "smy_albtg" {
  name = "${var.name}-albtg"
  port = var.port_http
  protocol = var.HTTP
  vpc_id = aws_vpc.smy_vpc.id

  health_check {
    enabled = true
    interval = 5
    healthy_threshold = 3
    matcher = "200"
    path = "/health.html"
    port = "traffic-port"
    protocol = var.HTTP
    timeout = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "smy_alblis" {
  load_balancer_arn = aws_lb.smy_alb.arn
  port = var.port_http
  protocol = var.HTTP

  default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.smy_albtg.arn
  }
}

resource "aws_lb_target_group_attachment" "smy_albtgatt" {
  target_group_arn = aws_lb_target_group.smy_albtg.arn
  target_id = aws_instance.smy_web.id
  port = var.port_http
}