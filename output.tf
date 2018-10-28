output "public_ip" {
  value = "${aws_instance.instance1.public_ip}"
}

output "ID" {
  value = "${aws_instance.instance1.id}"
}

#output "ID2" {
#       value = "${aws_instance.instance.id}"
#}


#output "public_ip2" {
#	value = "${aws_instance.instance.public_ip}"
#}

