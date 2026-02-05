#!/bin/bash

# Остановить и удалить все контейнеры
docker-compose down 2>/dev/null || true
# Остановить все контейнеры
docker stop $(docker ps -aq) 2>/dev/null || true
# Удалить все контейнеры
docker rm $(docker ps -aq) 2>/dev/null || true
# Удалить все образы
docker rmi $(docker images -q) 2>/dev/null || true
# Очистить систему
docker system prune -a -f --volumes

echo "Готово! Docker очищен."
