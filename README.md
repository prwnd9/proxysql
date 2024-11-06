ProxySQL
========

## Links
- https://hub.docker.com/_/mysql
- https://hub.docker.com/r/proxysql/proxysql
- https://artifacthub.io/packages/helm/dysnix/proxysql
- https://github.com/dysnix/charts/tree/main/dysnix/proxysql

## Usage
```bash
docker compose up -d mysql
docker compose up -d proxysql

docker compose build client
docker compose up -d client

docker compose exec client sh
mysql -h mysql -u root -ptest # does not work hence client needs caching_sha2_password plugin
mysql -h mysql -u user -ptest # fix is to add `apk add mariadb-connector-c-dev`

mysql -h proxysql -P 6033 -u root -ptest
mysql -h proxysql -P 6033 -u user -ptest
```

## SQL
```sql
SELECT user,host FROM mysql.user;
```
