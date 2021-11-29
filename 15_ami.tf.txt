resource "aws_ami_from_instance" "smy_ami" {
  name = "smy-ami"
  source_instance_id = aws_instance.smy_web.id
  depends_on = [
    aws_instance.smy_web
  ]
}