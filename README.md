# Docker Metabase + PgSQL

Это просто небольшой репозиторий с образом Metabase и PostgreSQL, на котором я проверял репликацию через pgloader.

Стало неожиданным, но после внимательного размышления мне стало понятно, что это логично:

[container_name](https://github.com/filippchistiakov/docker_metabase/blob/main/docker-compose.yml#L6) = [имя хоста](https://github.com/filippchistiakov/docker_metabase/blob/fe9433bf4e7968dd54b4234cd020855b5de11bde/pgloader/entrypoint.sh#L19)
для других контейнеров