# README

## 環境構築
```
$ docker compose build
$ docker compose run --rm web bin/setup
$ docker compose run --rm --service-ports web
-> localhost:3000 でアクセスできるようになる
```
