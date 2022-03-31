output "london-bucket" {
  value = module.s3-webapp-london.endpoint
}

output "ireland-bucket" {
  value = module.s3-webapp-ireland.endpoint
}