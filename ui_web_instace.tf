data "aws_ami" "web" {
	filter {
		name   = "state"
		values = ["available"]
	}
	filter {
		name   = "tag"
		values = ["web"]
	}
}

resource "aws_instance" "web" {
	ami = data.aws_ami.web.id
}