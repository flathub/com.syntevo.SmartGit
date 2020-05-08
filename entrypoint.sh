#!/usr/bin/env sh

set -o errexit

SMARTGIT_JAVA_HOME="/app/extra/smartgit/jre"
export SMARTGIT_JAVA_HOME

exec /app/extra/smartgit/bin/smartgit.sh "$@"
