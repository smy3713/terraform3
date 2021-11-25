resource "aws_key_pair" "smy_key" {
  key_name = "smy1_key"
//  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDVGxOHqqhAGLYHmts5SEws/C3crVSEmwFq4SU4xbOIBQlEcOGtA2IWLRjxByidkUe5V4XN2s5kCy/tM8QUJVCrArDcSewGFxJW+A8Iiuh5+zy8hXgzb44uRfWYcwqUvhJHQpe0nDNu50f2dZB8x4GuUw16Am9GfG0pGZLZMDN6/z0rkzPNGdHwcrGrQfWiwwWvhfvqEAmTP72fV0sTbiaE4Dohm+XJBCdWILLzMQCgnBZS+PkL5Q31c18T+njs8o5I620Kl7RrSuP3P774gVn8RQCSPeluUX9Rjcmzpb9TDj9fEWtLFIA3DrPSRjOILqNDADwmz6ttIqhWcKKwEvYi/I+KqVwywrnI0Wtk04OKBKqzt8pjdug4uq/nOpvn/j0CQ6TaQOuRWRtMz2n+q1SFdlhvW6ze5aYrMej4t7Eqim2VV+eS/lBsMzUsU12RIne+vgXf5DI6aPj3+R3Byw1jR35oM499d27Se9tT6104uCbXbrvmyBPBPG4OPJqdMks="
  public_key = file("../../.ssh/smy-key.pub")
}