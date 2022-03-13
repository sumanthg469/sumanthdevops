/*create vpc-vpc-te

resource "aws_vpc" "vpc-o1"{
	cidr_block="10.0.0.0/16"
	instance_tenancy="default"
	tags={
		Name="vpc-te"
		env="dev"
}
}
/*createte igw
resource "aws_internet_gateway" "igw-te" {
	vpc_id=aws_vpc.vpc-o1.id
	tags={
		Name="igw-te"
}
}
resource "aws_route_table" "rt1_public"{
	vpc_id=aws_vpc.vpc-o1.id
	route{
        	cidr_block = "20.0.0.0/32"
   		gateway_id = aws_internet_gateway.igw-te.id
}
	route{
        	cidr_block = "56.90.90.90/32"
   		gateway_id = aws_internet_gateway.igw-te.id
}

	tags={
		Name= "practrt"
		Env="Dev"
		App="Web"
		
}
}
*/