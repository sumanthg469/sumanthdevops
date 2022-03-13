/*create a vpc */

resource aws_vpc "vpc1"{
	cidr_block="10.0.0.0/16"
	instance_tenancy="default"

	tags ={
		"Name"="vpc1"
		"Env"="web"
}

}

/*create a public subnet-vpc1*/

resource aw_subnet "sn1_public"{

	vpc_id=aws_vpc.vpc1.id
	availability_zone="us-east-1a"
	cidr_block="10.0.0.0/24"
	tags ={
		"Name"="subnet1(publicvpc1)"
		"Env"="web"
}
}

resource aw_subnet "sn2_public"{

	vpc_id=aws_vpc.vpc1.id
	availability_zone="us-east-1b"
	cidr_block="10.0.0.128/24"
	tags ={
		"Name"="subnet2(publicvpc1)"
		"Env"="web"
}

}