# Запуск.

- Что бы запустить все это добро надо вначале это все собрать а потом запустить с пробросом порта с 80 на 8080.
- Данная команда ниже запускается в директории склонированного репозитория.
```sh
docker build -t nginx-misha:v1 -f Dockerfile .
```
- Данная команда ниже так-же запускается в директории склонированного репозитория.
```sh
docker run -d -p 8080:80 --name nginx-server nginx-misha:v1
```
И всё!
