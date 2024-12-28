#!/bin/bash

if [ ! -d "/var/lib/postgresql/13/main/" ]; then

    mkdir -p /var/lib/postgresql/13/main

    /usr/lib/postgresql/13/bin/initdb -D /var/lib/postgresql/13/main/

    /etc/init.d/postgresql start

    psql --command "ALTER USER ${BILLING_DB_USER} WITH PASSWORD '${BILLING_DB_PASSWORD}';"

    psql --command "CREATE USER ${BILLING_DB_USER} WITH SUPERUSER PASSWORD '${BILLING_DB_PASSWORD}';" &&\
    createdb -O ${BILLING_DB_USER} ${BILLING_DB_NAME}

    echo "listen_addresses='*'" >> /var/lib/postgresql/13/main/postgresql.conf

    echo "host  all  all 0.0.0.0/0 md5" >> /var/lib/postgresql/13/main/pg_hba.conf
fi

/etc/init.d/postgresql stop

/usr/lib/postgresql/13/bin/postgres -D /var/lib/postgresql/13/main