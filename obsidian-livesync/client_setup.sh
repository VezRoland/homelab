#!/bin/bash
source .env

export hostname=https://$COUCHDB_HOSTNAME
export database=obsidian-vault
export passphrase=$OBSIDIAN_PASSPHRASE
export username=$COUCHDB_USER
export password=$COUCHDB_PASSWORD

deno run -A https://raw.githubusercontent.com/vrtmrz/obsidian-livesync/main/utils/flyio/generate_setupuri.ts
