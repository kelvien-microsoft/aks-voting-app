# 1. Use the official MySQL image as a base
FROM mysql:latest

# 2. Set the working directory (optional)
WORKDIR /var/lib/mysql

# 3. Copy any local initialization scripts (.sql or .sh) 
# to the special entrypoint folder
COPY ./init.sql /docker-entrypoint-initdb.d/

# 4. Document that the service listens on 3306
EXPOSE 3306
