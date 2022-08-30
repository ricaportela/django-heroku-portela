FROM postgres:14
COPY postgres.conf /etc/postgresql/postgresql.conf
COPY db-seed-files/ /etc/docker-entrypoint-initdb.d/
CMD ["-c", "config_file=/etc/postgresql/postgresql.conf"]