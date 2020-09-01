#!/usr/bin/env sh

set -o errexit

SMARTGIT_JAVA_HOME="/app/extra/smartgit/jre"
export SMARTGIT_JAVA_HOME
TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
export TMPDIR

exec /app/extra/smartgit/bin/smartgit.sh "$@"
