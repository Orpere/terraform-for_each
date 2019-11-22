variable "city" {
  default = ["new_york", "london"]
}

resource "null_resource" "city" {
  for_each = toset(var.city)
}

# output "upper_names" {
#   value = [for name in var.city : upper(name)]
# }