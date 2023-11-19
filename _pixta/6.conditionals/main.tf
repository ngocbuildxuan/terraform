variable "name" {
    type = string
}

# output "greetings" {
#   value = "Hello, %{ if var.name != "" }${var.name}%{ else }unnamed%{ endif }"
# }

output "greetings" {
  value = "Hello, ${length(var.name) > 0 ? var.name : "unnamed"}"
}
