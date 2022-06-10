FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]


FROM python:3.7.2-alpine3.8
LABEL maintainer="jeffmshale@gmail.com"
# Устанавливаем зависимости
RUN apk add --update git
# Задаём текущую рабочую директорию
WORKDIR /usr/src/my_app_directory
# Копируем код из локального контекста в рабочую директорию образа
COPY . .
# Задаём значение по умолчанию для переменной
ARG my_var=my_default_value
# Настраиваем команду, которая должна быть запущена в контейнере во время его выполнения
ENTRYPOINT ["python", "./app/my_script.py", "my_var"]
# Открываем порты
EXPOSE 8000
# Создаём том для хранения данных
VOLUME /my_volume
