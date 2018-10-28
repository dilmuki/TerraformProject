# resource "aws_instance" "instance1" {
#  ami                         = "ami-0c21ae4a3bd190229"
#  instance_type               = "t2.micro"
#  key_name                    = "project1"
#  subnet_id                   = "${aws_subnet.artemis-public.id}"
#  vpc_security_group_ids      = ["${aws_security_group.artemis.id}"]
#  associate_public_ip_address = "true"
#
#  user_data = "${file("apache.sh")}"
#}

resource "aws_instance" "instance1" {
  ami                    = "ami-0c21ae4a3bd190229"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-public.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data = "${file("apache.sh")}"
  associate_public_ip_address = "true"
}

#Database Host

resource "aws_instance" "dbhost" {
  ami                    = "ami-0c21ae4a3bd190229"
  instance_type          = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-private.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]
  user_data = "${file("db.sh")}"
  associate_public_ip_address = "false"
}



