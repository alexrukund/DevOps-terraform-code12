
resource "aws_instance" "web" {
  ami                                  = "ami-0a699202e5027c10d"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0                   
  key_name                             = "wordplace"
  monitoring                              = false
  security_groups                      = ["launch-wizard-9"]
  source_dest_check                    = true
  subnet_id                            = "subnet-02f298ffade2bad31"
  tags = {
    Name = "webserver"
  }
}