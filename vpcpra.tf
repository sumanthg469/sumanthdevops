/*create vpc 

resource "aws_vpc" "vpcpra"{
	cidr_block="10.0.0.0/24"
	instance_tenancy="default"
	tags={
		"Name"="vpcpra"
		"app"="webapp"
		
}
}

/*create igw 

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpcpra.id

  tags = {
    Name = "igwpract"
  }
}

/*create sg inside vpc
resource "aws_security_group" "sgpract" {
  name        = "sgpract"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpcpra.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 30
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["23.90.90.45/32","45.90.78.90/32"]
    
  }

//terraform validate
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "sgpract"
  }
}

//prinnt the value of vpcid
output "vpcid" {
  value = aws_vpc.vpcpra.id
}

//prinnt the value of sgid
output "sgpractid" {
  value = aws_security_group.sgpract.id
}


*/

