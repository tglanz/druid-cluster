FROM postgres:14.4-alpine

# The postgres image will execute all .sql and .sh files in /docker-entrypoint-initdb.d/ directory
COPY initdb.d/* /docker-entrypoint-initdb.d/
