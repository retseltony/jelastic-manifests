#!/bin/bash
DB_PASSWORD=$1
PGSQL_DATA="/var/lib/pgsql/data/"
echo "--->>> $DB_PASSWORD" 
#set up master
    KONGPASSWORD=${DB_PASSWORD} psql -Uwebadmin postgres -c "CREATE USER kong LOGIN ENCRYPTED PASSWORD '${DB_PASSWORD}';";
    sudo /etc/init.d/postgresql stop
    sed -i "1i host kong  all        0.0.0.0/0    md5" ${PGSQL_DATA}pg_hba.conf;
    sudo /etc/init.d/postgresql start