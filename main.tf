module "add_locking_components" {
  source = "../modules/dynamodb"
  environment = var.environment
  infra_component = {
    "component1"   = "bastion"
    "component2"   = "s3"
    "component3"   = "kinesis"
  }
}