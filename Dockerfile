
FROM postgres

ADD init.sh /docker-entrypoint-initdb.d/init.sh

