variable "region" {
  type    = list(string)
  default = ["eu-west-1", "eu-west-2"]
}
variable "prefix" {
  default = "krasteki"
}
variable "name" {
  type    = list(string)
  default = ["krasteki-london", "krasteki-ireland"]
}