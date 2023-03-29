output "instance_id" {
  value = null_resource.instance.id
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
