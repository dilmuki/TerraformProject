output "public_ip" {
  value = "${aws_instance.instance1.public_ip}"
}
output "ID" {
  value = "${aws_instance.instance1.id}"
}


