
variable "zone" {
  type        = string
 # default     = "ru-central1-a"
}
variable "cidr" {
  type        = list(string)
 # default     = ["10.0.1.0/24"]
}
variable "env_name_network" {
  type        = string
 # default     = "develop"
}
# variable "folder_id" {
#   type        = string
#   description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
# }

variable "env_name_subnet" {
  type        = string
 # default     = "develop"
}