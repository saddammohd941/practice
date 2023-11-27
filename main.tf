terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.2.3"
    }
  }
}
resource "local_file" "pet" {
filename = var.filename[count.index]
content = "i love you nancy ${random_pet.petname.id}"
depends_on = [ random_pet.petname ]
content_base64 = null
file_permission = "700" 
source = null
count = length(var.filename)
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
