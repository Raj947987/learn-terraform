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
variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics= ["Terraform","Jenkins","Docker"]
  }
    aws= {
      name = "aws"
#      topics= ["Ec2","Delta"]
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}
output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null), "topics", "No topics so far")
}
output "fruits_element" {
  value = element(var.fruits, 3)
}
variable "a" {
  default = 500
}
output "cond_value" {
  value = var.a > 300 ? "Grater Value" :"Less Quantity"
}