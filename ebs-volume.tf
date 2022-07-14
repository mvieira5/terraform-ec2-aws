resource "aws_ebs_volume" "ebs_clicksign" {
  availability_zone = "us-east-1a"
  size              = 100
  type              = "gp3"

  tags = {
      Name = "ebs_clicksign"
      Resource = "ebs"
      Terraform   = "true"
      Environment = "dev"
  }
}