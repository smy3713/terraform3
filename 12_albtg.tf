resource "aws_lb_target_group" "smy_albtg" {
  name = "smy-albtg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.smy_vpc.id

  health_check {
    enabled = true
    interval = 5
    healthy_threshold = 3
    matcher = "200"
    path = "/health.html"
    port = "traffic-port"
    protocol = "HTTP"
    timeout = 2
    unhealthy_threshold = 2
  }
}