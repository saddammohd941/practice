resource "local_file" "pet" {
filename = var.filename
content = "i love you nancy ${random_pet.petname.id}"
depends_on = [ random_pet.petname ]
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
output "petname" {
  value = random_pet.petname.id
}
output "pet" {
  value = local_file.pet.id
}