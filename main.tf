# #создаем облачную сеть
# resource "yandex_vpc_network" "develop" {
#   name = "develop"
# }

# #создаем подсеть
# resource "yandex_vpc_subnet" "develop_a" {
#   name           = "develop-ru-central1-a"
#   zone           = "ru-central1-a"
#   network_id     = yandex_vpc_network.develop.id
#   v4_cidr_blocks = ["10.0.1.0/24"]
# } 

module "vpc-dev" { #название модуля
  source       = "./vpc-dev" 
  env_name_network = "network" #параметры которые передаем
  env_name_subnet  = "subnet" #параметры которые передаем
  zone = "ru-central1-a"
  cidr = ["10.0.1.0/24"]
}

module "module-srv-vm01" {
 # source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  source         = "git::https://github.com/olegveselov1984/yandex_compute_instance.git?ref=main"
 # https://github.com/olegveselov1984/yandex_compute_instance.git
  network_id     = module.vpc-dev.network_id 
  subnet_zones   = ["ru-central1-a","ru-central1-b"]
  subnet_ids     = [module.vpc-dev.subnet_id] 
  instance_name  = "srv-vm01"
  env_name = "srv-vm01" # Имя одной конкретной ВМ. instance_count не учитывается
  #hostname = "srv-vm01"
  #instance_count = 1
  image_family   = "ubuntu-2404-lts"
  public_ip      = true
  security_group_ids = [
  yandex_vpc_security_group.example.id 
  ]

   labels = { 
  #   owner= "i.ivanov",
     project = "srv-vm01"
      }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }

}

module "module-srv-vm02" {
 # source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
   source         = "git::https://github.com/olegveselov1984/yandex_compute_instance.git?ref=main"
  network_id     = module.vpc-dev.network_id 
 # network_id     = yandex_vpc_network.develop.id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = [module.vpc-dev.subnet_id]
#  subnet_ids     = [yandex_vpc_subnet.develop_a.id]
  instance_name  = "srv-vm02"
  env_name = "srv-vm02"
  #hostname = "srv-vm02"
 # instance_count = 1
  image_family   = "ubuntu-2404-lts"
  public_ip      = true
  security_group_ids = [
  yandex_vpc_security_group.example.id 
  ]


   labels = { 
  #   owner= "i.ivanov",
     project = "srv-vm02"
      }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }

}

#Пример передачи cloud-config в ВМ.(передали путь к yml файлу и переменную!_ssh_public_key)
data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")
   vars = {
     ssh_public_key = var.ssh_public_key
   }
}

