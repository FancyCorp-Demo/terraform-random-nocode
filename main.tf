resource "random_pet" "pet" {
  length    = var.length
  prefix    = var.prefix
  separator = var.separator
}
