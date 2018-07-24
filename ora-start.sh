docker network create my-net

docker run \
--rm \
-d \
-h myoradb \
--name myoradb \
--network my-net \
-p 8080:8080 \
-p 1521:1521 \
-v $PWD/myfiles/oradata:/u01/app/oracle \
sath89/oracle-12c

# hostname: localhost
# port: 1521
# sid: xe
# service name: xe
# username: system
# password: oracle
# To connect using sqlplus:

# sqlplus system/oracle@//localhost:1521/xe

# Password for SYS & SYSTEM:

# oracle
# Connect to Oracle Application Express web management console with following settings:

# http://localhost:8080/apex
# workspace: INTERNAL
# user: ADMIN
# password: 0Racle$