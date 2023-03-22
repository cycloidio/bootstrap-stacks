resource "random_string" "random" {
  length           = var.random_length
  special          = true
  override_special = "/@£$"
}
