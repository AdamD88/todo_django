module "S3" {
  source = "../../s3"

}
module "DB" {
  source = "../../DBMySQL"

}

module "Route53" {
  source = "../../Route53"

}
