resource "aws_ami_from_instance" "smy_ami" {
  name = "${var.name}-ami"
  source_instance_id = aws_instance.smy_web.id
  depends_on = [
    aws_instance.smy_web
  ]
}

resource "aws_launch_configuration" "smy_lacf" {
  name = "${var.name}-lacf"
  image_id = aws_ami_from_instance.smy_ami.id
  instance_type = var.instance_type
  iam_instance_profile = "admin_role"
  security_groups = [aws_security_group.smy_sg.id]
  key_name = var.key
  user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
                
}

resource "aws_placement_group" "smy_pg" {
  name = "${var.name}-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "smy_atsg" {
  name = "${var.name}-atsg"
  min_size = 2
  max_size = 10
  health_check_grace_period = 60
  health_check_type = "EC2"
  desired_capacity = 2
  force_delete = false
  launch_configuration = aws_launch_configuration.smy_lacf.name
  vpc_zone_identifier = [aws_subnet.smy_pub[0].id,aws_subnet.smy_pub[1].id]
 # placement_group = aws_placement_group.smy_pg.id
}

resource "aws_autoscaling_attachment" "smy_asatt" {
  autoscaling_group_name = aws_autoscaling_group.smy_atsg.id
  alb_target_group_arn = aws_lb_target_group.smy_albtg.arn
}