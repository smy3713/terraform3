resource "aws_key_pair" "smy_key" {
  key_name = "smy1_key"
  public_key = file("../../.ssh/smy-key.pub")
}