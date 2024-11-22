module "network" {
  source   = "./modules/network"
  vpc_cidr = var.vpc_cidr
}

module "compute" {
  source           = "./modules/compute"
  vpc_id           = module.network.vpc_id
  public_subnets   = module.network.public_subnets
  private_subnets  = module.network.private_subnets
}

module "database" {
  source         = "./modules/database"
  vpc_id         = module.network.vpc_id
  private_subnet = module.network.private_subnets[0]
  db_username    = var.db_username
  db_password    = var.db_password
}

module "storage" {
  source = "./modules/storage"
}
