variable "sample" {
  default = 100
}
variable "sample1" {
  default = "Hello World"
}
output "sample" {
  value = var.sample
}
output "sample1" {
  value = var.sample1
}
output "sample-extended-string" {
  value = "Value of sample - ${var.sample} "
}

##plain
variable "course" {
  default = "Devops Training"
}

#List
variable "courses" {
  default = [
  "Linux",
  "AWS",
  "Python"
  ]
}

##Map

variable "course-details" {
default = {

  devops = {
    name = "DevOps"
    Timings = "10AM"
    duration = 90
  }
  aws = {
    name = "aws"
    Timings = "11 AM"
    duration = 30

    }

}

}


##Output

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "course-details" {
  value = var.course-details["devops"]
}
variable "env" {}

output "env" {
  value = var.env
}

variable "url" {}
output "url" {
  value = var.url
}

