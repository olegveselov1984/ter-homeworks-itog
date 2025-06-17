###cloud vars

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "ssh_public_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJzqKwUDlLQy+gsAc6as6WUmctThf3uqdlHZPSRwn4OF ed25519 256-20250602"
}

variable "hostname" {
  type        = string
 }

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
    # validation {
    #   condition = contains(["ru-central1-a", "ru-central1-b", "ru-central1-d"], var.platform) 
    #   error_message = "Invalid parametr."
    #   }
  }

  # variable "ip01" {
  # type        = string
  # description="ip-адрес"
  # default     = "192.168.0.1"
  #   validation {
  #   condition     = can(cidrhost("${var.ip01}/24", 24))
  #   error_message = "Must be valid IPv4 CIDR."
  # }
  # }

####Работает, но нашел в Инете
  # variable "ip02" {
  # type        = string
  # description="ip-адрес"
  # default     = "10.0.1.17"
  #   validation {
  #   condition = can(regex("^((25[0-5]|(2[0-4]|1\\d|[1-9]|)\\d)\\.?\\b){4}$", var.ip02))
  #   error_message = "Must be valid IPv4 CIDR."
  # }
  # }


  # variable "ip03" {
  # type        = list(string)
  # description="список ip-адресов"
  # default     = ["192.168.0.1", "1.1.1.1", "127.0.0.1"] 
  #     validation { 
  #           condition = alltrue([
  #   for a in var.ip03 : can(cidrhost("${a}/24", 24))
  #   ])
  #   error_message = "Must be valid IPv4 CIDR."
  # }
  # }