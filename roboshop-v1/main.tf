module "instances" {
  for_each = var.instances
  source = "./ec2"
  name = each.key
}

variable "instances" {
  default = {

    frontend = {}
    mongodb = {}
    catalogue = {}
    redis = {}
    cart = {}
    user = {}
    shipping = {}
    rabbitmq = {}
    mysql = {}
    payment = {}
  }
}










#module "frontend" {
#  source = "./ec2"
#  name = "frontend"
#}
#module "mongodb" {
#  source = "./ec2"
#  name = "mongodb"
#}
#
#module "catalogue" {
#  source = "./ec2"
#  name = "catalogue"
#}
#module "redis" {
#  source = "./ec2"
#  name = "redis"
#}
#module "user" {
#  source = "./ec2"
#  name = "user"
#}
#module "mysql" {
#  source = "./ec2"
#  name = "mysql"
#}
#module "cart" {
#  source = "./ec2"
#  name = "cart"
#}
#module "shipping" {
#  source = "./ec2"
#  name = "shipping"
#}
#module "rabbitmq" {
#  source = "./ec2"
#  name = "rabbitmq"
#}
#module "payment" {
#  source = "./ec2"
#  name = "payment"
#}
