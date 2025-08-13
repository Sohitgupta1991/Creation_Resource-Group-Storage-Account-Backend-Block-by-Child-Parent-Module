module "rg" {
  source = "../ChildModule/Resource_Group"

  rg_name     = "backend"
  rg_location = "East US"
}

module "stg" {
  source     = "../ChildModule/Storage_account"
  depends_on = [module.rg]

  rg_name     = "backend"
  rg_location = "East US"
  stg_name    = "backendkaadda90"
}

module "Container" {
  source     = "../ChildModule/Container"
  depends_on = [module.stg]

  container_name = "addekadabba"
  rg_name        = "backend"
}


module "stg91" {
  source     = "../ChildModule/Storage_account"
  depends_on = [module.rg]

  rg_name     = "backend"
  rg_location = "East US"
  stg_name    = "backendkaadda91"
}