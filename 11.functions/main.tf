variable "class" {
  default = "devops"
}
output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["Apple","Banana","Orange"]
}
output "fruits_count" {
  value = length(var.fruits)
}