resource "aws_security_group" "ec2_sg" {
	name = "ec2_sg"
	description = "ec2_sg SG"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

  	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port = 8080
		to_port = 8080
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

    ingress {
		from_port = 8081
		to_port = 8081
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

    ingress {
		from_port = 8082
		to_port = 8082
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

    ingress {
		from_port = 9000
		to_port = 9000
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}


	#Allow all outbound
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
tags = {
    Name = "ec2_sg"
  }
}
