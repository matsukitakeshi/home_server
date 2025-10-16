# immich画像サーバ
## 環境構築

```
cp .env.example .env
docker compose up -d
```

## immichのアプデ方法

```
docker compose pull
docker compose up -d
```

### バージョンアップ自動化 Cronの設定
- 日曜日の六時に毎週定期実行されるように設定。
- 毎日0時にDBのバックアップ実行

```
  matsu@matsu  ~/home_server/immich   main  crontab -l
0 6 * * 0 cd /home/matsu/home_server/immich && /usr/bin/env bash ./version_update.sh >> /home/matsu/home_server/immich/version_update.log 2>&1
0 0 * * * /home/matsu/home_server/immich/backup_database.sh >> /mnt/ssd/immich/postgres/backup_database.log 2>&1
```

