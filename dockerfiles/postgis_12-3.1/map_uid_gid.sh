#!/bin/bash

# NOT FOR PRODUCTION
apk --no-cache add shadow
usermod -u $USER_UID postgres
groupmod -g $USER_GID postgres
chown -R postgres:postgres /var/lib/postgresql
