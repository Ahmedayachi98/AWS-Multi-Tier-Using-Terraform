variable "vpc_id" {}
variable "private_subnet" {}
variable "db_username" {
  type = string
}
variable "db_password" {
  type      = string
  sensitive = true
}
