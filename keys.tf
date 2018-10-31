resource "aws_key_pair" "project1" {
  key_name   = "project1"
  public_key = "${file("/root/.ssh/id_rsa.pub")}"
}
