#!/bin/bash

if [ ! -d "/var/lib/postgresql/13/main/" ]; then

    mkdir -p /var/lib/postgresql/13/main

    /usr/lib/postgresql/13/bin/initdb -D /var/lib/postgresql/13/main/

    /etc/init.d/postgresql start

    psql --command "ALTER USER ${INVENTORY_DB_USER} WITH PASSWORD '${INVENTORY_DB_PASSWORD}';"

    # Create a new user and database
    psql --command "CREATE USER ${INVENTORY_DB_USER} WITH SUPERUSER PASSWORD '${INVENTORY_DB_PASSWORD}';" &&\
    createdb -O ${INVENTORY_DB_USER} ${INVENTORY_DB_NAME}

    # Enable public access
    echo "listen_addresses='*'" >> /var/lib/postgresql/13/main/postgresql.conf

    # Enable public access
    echo "host  all  all 0.0.0.0/0 md5" >> /var/lib/postgresql/13/main/pg_hba.conf
fi

# Have you tried turning it off and on again?
/etc/init.d/postgresql stop

/usr/lib/postgresql/13/bin/postgres -D /var/lib/postgresql/13/main