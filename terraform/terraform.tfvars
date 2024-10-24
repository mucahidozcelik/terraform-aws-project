region             = "eu-west-1"
vpc_cidr_block     = "10.0.0.0/16"
subnet_cidr_block  = "10.0.1.0/24"
vpc_name           = "nginx-vpc"
subnet_name        = "nginx-subnet"
security_group_name = "nginx-sg"
ami                = "ami-03cc8375791cb8bcf"
instance_type      = "t2.micro"
instance_name      = "nginx-instance"