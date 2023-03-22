output "random_string" {
  value = random_string.random.result
}

output "env" {
  value = var.env
}

output "project" {
  value = var.project
}

output "organization" {
  value = var.organization
}
