FROM ubuntu:20.04

# Установка pgloader
RUN apt-get update && \
    apt-get install -y pgloader && \
    apt-get install -y sqlite3 libsqlite3-dev && \
    apt-get install -y postgresql-client && \
    echo 'done'


# Копирование скрипта entrypoint
COPY entrypoint.sh /entrypoint.sh

# Добавление исполняемых прав для скрипта
RUN chmod +x /entrypoint.sh

# Укажите команду по умолчанию для запуска скрипта entrypoint
CMD ["/entrypoint.sh"]
