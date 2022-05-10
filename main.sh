sh startpg.sh
pg_ctl stop
pg_ctl -l ./postgresql.log start

if [ ! -f "typecho" ];then
#PG创建数据库：typecho
create -h 127.0.0.1 -p 5432 user admin with password 'admin';
createdb -h 127.0.0.1 -p 5432 typecho
git clone https://github.com/typecho/typecho
fi
php -S 0.0.0.0:8000 -t typecho
