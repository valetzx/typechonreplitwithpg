createdb -h 127.0.0.1
psql -h 127.0.0.1
create user admin with password 'admin';
CREATE DATABASE typehc  OWNER admin;
GRANT ALL PRIVILEGES ON DATABASE typehc to admin;
