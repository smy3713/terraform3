resource "awss_lb_target_group" "smy_albtg" {
  name     = "smy-albtg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.smy_vpc.id

  health_check {
    enabled             = true
    healty_threshold    = 3
    interval            = 5
    matcher             = "200"
    path                = "/health.html"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 2
    unhealthy_threshold = 2
  }
}
