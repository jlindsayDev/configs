#!/bin/sh

USAGE="Usage: $0 machine_name directory [hosts...]"
MACHINE=${1?$USAGE}
DIRECTORY=${2?$USAGE}

REPO_DIR=$(dirname $(realpath $0))
pushd $REPO_DIR

ln -s "machines/$MACHINE.docker-compose.yml" "$DIRECTORY/docker-compose.yml"
ln -s "./services" "$DIRECTORY/services"

popd

# https://stackoverflow.com/a/39398511/26998409
# chown -R appuser:appgroup /path/to/volume
# exec runuser -u appuser "$@"
