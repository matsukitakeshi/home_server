# Docker内でSQLdumpを実行
docker exec -i immich_postgres pg_dump -U postgres immich > backup.sql 
gzip -k ./backup.sql

# /mnt/ssd/immich/postgres/backup.sql.gz に移動
mv ./backup.sql.gz /mnt/ssd/immich/postgres/backup.sql.gz
rm ./backup.sql

