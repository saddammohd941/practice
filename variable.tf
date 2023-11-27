variable "filename" {
  default = ["pets.txt", "cats.txt", "dogs.txt", "saddam-sam.txt"]
}
variable "prefix" {
  default = "saddam"
  type = string
}
variable "separator" {
  default = "."
  type = string
}
variable "length" {
  default = "1"
  type = number
}