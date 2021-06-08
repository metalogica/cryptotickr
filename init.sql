-- used in docker compose file: /docker-entrypoint-initdb.d/init.sql.
-- fires once on each container creation; creates new user forephemeral db instance.
CREATE USER cryptotickr_development SUPERUSER;
