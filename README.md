# python-cron

## 起動

```git clone https://github.com/kino-code/python-cron.git python-cron```

```cd python-cron```

```docker-compose up -d```

```docker exec python-cron cron restart bash```

## 確認方法

- cron.logファイルが作成される
- 1分毎にcron.logファイルに追記される
- 1分毎にcsvファイルが作成される
