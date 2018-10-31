# Web
resource "aws_instance" "instance2" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-public.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data = "${file("apache.sh")}"
  associate_public_ip_address = "true"
}

# DB Host
resource "aws_instance" "dbhost" {
  ami                    = "${lookup(var.amis, var.region)}"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-private.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data = "${file("db.sh")}"
}

