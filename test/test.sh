#!/usr/bin/env sh

cp ../entrypoint.sh .
if [ $(docker-compose up --build has-secrets | grep -c SECRET_ENV_VAR=super-secret) -eq 1 ]; then
	exit 0;
else
	exit 1;
fi;
