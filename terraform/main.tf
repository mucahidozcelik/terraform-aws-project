module "vpc" {
  source            = "./modules/vpc"
  cidr_block        = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  vpc_name          = var.vpc_name
  subnet_name       = var.subnet_name
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
  security_group_name = var.security_group_name
}

module "ec2" {
  source         = "./modules/ec2"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = module.vpc.subnet_id
  security_groups = [module.security_group.security_group_id]
  instance_name  = var.instance_name
}
