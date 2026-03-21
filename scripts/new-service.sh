#!/bin/bash
set -e

NAME=${1?Usage: $0 name [directory]}
DIR=${2:-$(realpath "./services")}

echo $DIR
exit

mkdir -p $DIR/$NAME/{config,data,logs}

cat > $DIR/$NAME/docker-compose.yml <<EOF
services:
  $NAME:
    image: ${2:-nginx}
    container_name: $NAME
    restart: unless-stopped
    env_file:
      - .env
    volumes:
      - ./config:/config
      - ./data:/data
      - ./logs:/logs
EOF

cat > $DIR/$NAME/.env <<EOF
PUID=1000
PGID=1000
TZ=America/Los_Angeles
EOF

echo "Created $DIR/$NAME"
