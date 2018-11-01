resource "aws_security_group" "KadirovichProject" {
  name        = "KadirovichProject"
  description = "KadirovichProject Security Group"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}
