resource "local_file" "pet" {
filename = var.filename
content = var.content
content_base64 = null
file_permission = "700" 
source = null
lifecycle {
  create_before_destroy = true
}
}
resource "random_pet" "petname" {
  prefix = var.prefix
  length = var.length
  separator = var.separator
}
