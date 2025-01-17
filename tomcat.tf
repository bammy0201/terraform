resource "aws_instance" "Dev" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = "mydevopslearningclass"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data              = file("tomcat.sh")

  tags = {
    "Name" : "Dev"
  }
}

resource "aws_instance" "QA" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "T2.large"
  key_name      = "mydevopslearningclass"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data              = file("tomcat.sh")

  tags = {
    "Name" : "QA"
  }
}


resource "aws_instance" "Prod" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "T2Xlarge"
  key_name      = "mydevopslearningclass"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data              = file("tomcat.sh")

  tags = {
    "Name" : "Prod"
  }
}
