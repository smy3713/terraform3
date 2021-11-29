resource "aws_launch_configuration" "smy_lacf" {
  name = "smy-lacf"
  image_id = aws_ami_from_instance.smy_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups = [aws_security_group.smy_sg.id]
  key_name = "smy1_key"
  user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
                
}
