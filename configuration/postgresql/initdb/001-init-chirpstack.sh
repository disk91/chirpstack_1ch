#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "chirpstack1ch" <<-EOSQL
    create role chirpstack1ch with login password 'chirpstack1ch**';
    create database chirpstack with owner chirpstack1ch;
EOSQL
