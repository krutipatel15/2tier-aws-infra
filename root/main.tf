module "vpc" {
  source = "../modules/vpc"

  project_name=var.project_name
  vpc_cidr = var.vpc_cidr
  region_name = var.region_name
  pub_sub_1a_cidr = var.pub_sub_1a_cidr
  pub_sub_2b_cidr = var.pub_sub_2b_cidr
  pri_sub_3a_cidr = var.pri_sub_3a_cidr
  pri_sub_4b_cidr = var.pri_sub_4b_cidr
  pri_sub_5a_cidr = var.pri_sub_5a_cidr
  pri_sub_6b_cidr = var.pri_sub_6b_cidr
}

module "nat" {
  source = "../modules/NAT"

  igw_id = module.vpc.igw_id
  vpc_id        = module.vpc.vpc_id
  pub_sub_1a_id = module.vpc.pub_sub_1a_id
  pub_sub_2b_id = module.vpc.pub_sub_2b_id
  pri_sub_3a_id = module.vpc.pri_sub_3a_id
  pri_sub_4b_id = module.vpc.pri_sub_4b_id
  pri_sub_5a_id = module.vpc.pri_sub_5a_id
  pri_sub_6b_id = module.vpc.pri_sub_6b_id
}

module "security-group" {
  source = "../modules/SECURITY-GROUP"

  vpc_id = module.vpc.vpc_id
}

module "key" {
  source = "../modules/KEY"
}

module "alb" {
  source = "../modules/ALB"

  project_name   = module.vpc.project_name
  alb_sg_id      = module.security-group.alb_sg_id
  pub_sub_1a_id = module.vpc.pub_sub_1a_id
  pub_sub_2b_id = module.vpc.pub_sub_2b_id
  vpc_id         = module.vpc.vpc_id
}

module "RDS" {
  source = "../modules/RDS"

  pri_sub_5a_id = module.vpc.pri_sub_5a_id
  pri_sub_6b_id = module.vpc.pri_sub_6b_id
  db_name = var.db_name
  db_password = var.db_password
  db_username = var.db_username
  db_sg_id = module.security-group.db_sg_id
  db_sub_name = var.db_sub_name
}

module "cloudfornt" {
  source = "../modules/CLOUDFRONT"

  certificate_domain_name = var.certificate_domain_name
  alb_domain_name = module.alb.alb_dns_name
  additional_domain_name = var.additional_domain_name
  project_name = module.vpc.project_name
}

module "route53" {
  source = "../modules/ROUTE53"
  
  hosted_zone_name = var.hosted_zone_name
  cloudfront_domain_name = module.cloudfront.cloudfront_domain_name
  cloudfront_hosted_zone_id = module.cloudfront.cloudfront_hosted_zone_id
}