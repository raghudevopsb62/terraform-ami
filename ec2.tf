resource "aws_instance" "ami" {
  ami                    = data.aws_ami.ami.id
  aws_instance           = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  tags = {
    Name = "${var.COMPONENT}-ami"
  }
}


