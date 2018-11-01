# Web
resource "aws_instance" "instance2" {
  ami                         = "${lookup(var.amis, var.region)}"
  instance_type               = "t2.micro"
  key_name                    = "project1"
  subnet_id                   = "${aws_subnet.KadirovichProject-public.id}"
  vpc_security_group_ids      = ["${aws_security_group.KadirovichProject.id}"]
  user_data                   = "${file("apache.sh")}"
  associate_public_ip_address = "true"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
	lifecycle {
	prevent_destroy = false
	}
}

# DB Host
resource "aws_instance" "dbhost" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.KadirovichProject-private.id}"
  vpc_security_group_ids = ["${aws_security_group.KadirovichProject.id}"]
  user_data              = "${file("db.sh")}"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
	lifecycle {
	prevent_destroy = false
	}
}
