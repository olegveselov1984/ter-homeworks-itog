Задание 1. Развертывание инфраструктуры в Yandex Cloud.

Создайте Virtual Private Cloud (VPC). (создал через terraform)
![image](https://github.com/user-attachments/assets/588b4101-4757-4843-b824-9be993c5b262)

Создайте подсети. (создал через terraform)
![image](https://github.com/user-attachments/assets/68f30493-20a9-485a-b0d6-0d90fc9505cb)

Создайте виртуальные машины (VM): (создал через terraform)
![image](https://github.com/user-attachments/assets/3e19f00f-37a4-4990-a281-08a40f210a5b)

Настройте группы безопасности (порты 22, 80, 443). (создал через terraform)
![image](https://github.com/user-attachments/assets/ad4fa223-ccc0-41bf-8383-cd3f75adcbc4)

Привяжите группу безопасности к VM. (создал через terraform)
![image](https://github.com/user-attachments/assets/fab05808-ddfd-4e04-92ec-9384e5b2c03d)

Опишите создание БД MySQL в Yandex Cloud. (создал через веб)
![image](https://github.com/user-attachments/assets/288b80e5-4ae9-4ed1-834b-7b9082d8e328)

![image](https://github.com/user-attachments/assets/63f855df-986a-46b5-be02-8a087fef1b10)




Опишите создание Container Registry.
![image](https://github.com/user-attachments/assets/a118e463-9918-47aa-ab17-0fe0da495b18)
 




















Задание 2. Используя user-data (cloud-init), установите Docker и Docker Compose (см. Задания 5 модуля «Виртуализация и контейнеризация»).
![image](https://github.com/user-attachments/assets/057c6434-257a-4ee1-bcf5-823bb85e8dc6)

![image](https://github.com/user-attachments/assets/1e5a9309-e5e0-4865-a4b1-253eba1a4eea)


Задание 3. Опишите Docker файл (см. Задания 5 «Виртуализация и контейнеризация») c web-приложением и сохраните контейнер в Container Registry.
![image](https://github.com/user-attachments/assets/319b6abc-d3ac-4995-ae76-73513d758a95)


Задание 4. Завяжите работу приложения в контейнере на БД в Yandex Cloud.
![image](https://github.com/user-attachments/assets/eebd0c02-af7d-48a4-a9ee-aa16b4fed4de)






Запуск проекта на ВМ:

mkdir /home/ubuntu/my_project

cd /home/ubuntu/my_project

git clone https://github.com/olegveselov1984/ter-homeworks-itog.git

cd /home/ubuntu/my_project/ter-homeworks-itog/

docker compose up -d

![image](https://github.com/user-attachments/assets/107355b0-0689-4e30-9aad-98de85803b13)


![image](https://github.com/user-attachments/assets/6915e5c3-f8a0-4d6f-b1c5-98f1cf6fa3b6)



![image](https://github.com/user-attachments/assets/ea1c9f20-ae88-49f1-bb11-1938d0cb3ad8)




Задание 5*. Положите пароли от БД в LockBox и настройте интеграцию с Terraform так, чтобы пароль для БД брался из LockBox.
