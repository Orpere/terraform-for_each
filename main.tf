resource "null_resource" "city" {
  for_each = "${var.city}"
}

variable "city" {
  type = "map"
  default = {
    ny  = "new york"
    ln  = "london"
    sjc = "sanjose"
  }
}

output "city" {
  value = "${null_resource.city}"
}
