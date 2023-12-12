#!/usr/bin/env bash

set -o errexit

export SMARTGIT_JAVA_HOME="/app/extra/smartgit/jre"

update_system () {
  local xdg_config_git_directory="${HOME}/.config/git"
  if [[ -d "${xdg_config_git_directory}" ]] && [[ ! -h "${XDG_CONFIG_HOME}/git" ]]; then
    ln --symbolic "${xdg_config_git_directory}" "${XDG_CONFIG_HOME}"
  fi
}

update_system

exec env /app/extra/smartgit/bin/smartgit.sh "$@"
