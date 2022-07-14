resource "aws_instance" "clicksign_test" {
    ami = "ami-0e472ba40eb589f49"
    instance_type = "t3.large"
    key_name = "clicksign_test"
    subnet_id = ""
    vpc_security_group_ids = [ "" ]
    
    tags = {
        Name = "Clicksign_test"
        Resource = "nginx"
        Terraform   = "true"
        Environment = "dev"
    }

    root_block_device {
        volume_size = 30
    } 
}