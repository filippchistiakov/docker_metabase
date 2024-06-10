#!/bin/bash
echo "run entrypoint.sh"
# Функция для проверки доступности сервиса
wait_for_service() {
    local service="$1"
    local host="$2"
    local port="$3"
    echo "Waiting for $service to be ready..."
    until (echo >/dev/tcp/"$host"/"$port") &>/dev/null; do
        sleep 1
    done
    echo "$service is ready!"
}
# Подождать, пока PostgreSQL полностью инициализируется
wait_for_service "PostgreSQL" "postgres_16_meta" "5432"
pgloader --debug sqlite://dir_db/data.db postgresql://metabase:metabase@postgres_16_meta:5432/video