module "NV" {
    source = "./module/vpc_module"
    providers = {
      aws = aws.NV
    }
  vpc_cidr = "10.0.0.0/26"
}