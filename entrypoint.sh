#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

sync_user_git_config () {
  local user_git_config="${HOME}/.config/git"
  if [[ -d "${user_git_config}" ]] && [[ ! -h "${XDG_CONFIG_HOME}/git" ]]; then
    ln -s "${user_git_config}" "${XDG_CONFIG_HOME}"
  fi
}

# --------------------------------------------------------------------------------------------------
#
# --------------------------------------------------------------------------------------------------

sync_user_git_config

if [[ "${SMARTGIT_DEBUG_ENABLED:-}" == "true" ]]; then
  printf "TMPDIR: %s\n" "${TMPDIR:-}"
  printf "XDG_CURRENT_DESKTOP: %s\n" "${XDG_CURRENT_DESKTOP:-}"
  printf "XDG_SESSION_TYPE: %s\n" "${XDG_SESSION_TYPE:-}"
fi

exec env "/app/bin/smartgit.sh" "$@"
