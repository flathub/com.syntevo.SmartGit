#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

sync_user_git_config () {
  local user_git_config="${HOME}/.config/git"
  if [[ -d "${user_git_config}" ]] && [[ ! -h "${XDG_CONFIG_HOME}/git" ]]; then
    ln -s "${user_git_config}" "${XDG_CONFIG_HOME}"
  fi
}

sync_user_git_config

exec env "/app/extra/bin/smartgit.sh" "$@"
