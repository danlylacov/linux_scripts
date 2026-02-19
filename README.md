![Bash](https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

# BASH скрипты для упрощения работы с Linux Ubuntu

## Описание скриптов

### Docker

Скрипты для упрощения работы с Docker

- **[docker_install.sh](https://github.com/danlylacov/linux_scripts/blob/main/docker_install.sh)**  
  Скачивание и установка Docker и Docker Compose

- **[add_dockerhub_mirror.sh](https://github.com/danlylacov/linux_scripts/blob/main/add_dockerhub_mirror.sh)**  
  Скрипт установки зеркал для скачивания образов c DockerHub. Применять при достижении лимитов по пуллу с DockerHub.

- **[fast_clean_docker.sh](https://github.com/danlylacov/linux_scripts/blob/main/fast_clean_docker.sh)**  
  Скрипт для быстрой остановки и последующего удаления контейнеров/образов/volum'ов docker

### System

Системные скрипты

- **[create_AppImage_icon.sh](https://github.com/danlylacov/linux_scripts/blob/main/create_AppImage_icon.sh)**  
  Скрипт для быстрой распаковки AppImage и создания иконки в меню   

  **Использование:**  
  ```bash
  sudo chmod +x create_AppImage_icon.sh
  ./create_AppImage_icon.sh название.AppImage
  ```


## Использование:
```bash
git clone https://github.com/danlylacov/linux_scripts.git
cd linux_scripts
sudo chmod +x название_скрипта.sh
./название_скрипта.sh
```
