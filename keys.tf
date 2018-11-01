resource "aws_key_pair" "project1" {
  key_name   = "project1"
  public_key = "${file("id_rsa.pub")}"
}

resource "aws_key_pair" "jenkins" {
	key_name = "jenkins"
	public_key = "/var/lib/jenkins/.ssh/id_rsa.pub"
}
