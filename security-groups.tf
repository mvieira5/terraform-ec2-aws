resource "aws_security_group" "clicksign_sg" {
    name        = "clicksign_sg"
    description = "Clicksign security group"
    vpc_id = ""
    tags = {
        Name = "graylog_sg"
        Resource = "graylog"
        Terraform   = "true"
        Environment = "prd"
    }

    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
      description      = "SSH default port"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [ "0.0.0.0/0" ]
    }

    ingress {
      description      = "Web Server default port"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = [ "0.0.0.0/0" ]
    }
}