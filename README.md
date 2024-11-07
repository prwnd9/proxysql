ProxySQL
========

## Links
- https://hub.docker.com/_/mysql
- https://hub.docker.com/r/proxysql/proxysql
- https://artifacthub.io/packages/helm/dysnix/proxysql
- https://github.com/dysnix/charts/tree/main/dysnix/proxysql
- https://proxysql.com/documentation/authentication-methods
- https://proxysql.com/documentation/password-management

## Issues
- https://www.percona.com/blog/proxysql-support-for-mysql-caching_sha2_password

## Usage
```bash
# MySQL
docker compose up -d mysql
docker compose exec mysql mysql -uroot -ptest
SELECT user, host, authentication_string FROM mysql.user;

# ProxySQL
docker compose up -d proxysql
docker compose exec proxysql bash
docker compose exec proxysql mysql -P 6032 -u admin -padmin

# Client
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
