resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_subnet" "KadirovichProject-private" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_subnet" "KadirovichProject-public" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_internet_gateway" "KadirovichProject" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_route_table" "KadirovichProject" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.KadirovichProject.id}"
  }

  tags {
    Name       = "${var.appname}"
    Env        = "${var.Environment}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_route_table_association" "KadirovichProject" {
  subnet_id      = "${aws_subnet.KadirovichProject-public.id}"
  route_table_id = "${aws_route_table.KadirovichProject.id}"
}
