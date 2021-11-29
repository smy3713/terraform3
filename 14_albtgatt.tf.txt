resource "aws_lb_target_group_attachment" "smy_albtgatt" {
  target_group_arn = aws_lb_target_group.smy_albtg.arn
  target_id = aws_instance.smy_web.id
  port = 80
}