#!/bin/sh
# This essentially does the same thing as what Husky(https://typicode.github.io/husky) does

COMMIT_LINT_HOOK_PATH="$PWD/.custom_git_hooks"
COMMIT_LINT_CMT_MSG_HOOK_PATH="$COMMIT_LINT_HOOK_PATH/commit-msg"

ensure_hook_dir() {
  if [ ! -d "$COMMIT_LINT_HOOK_PATH" ]; then
    mkdir "$COMMIT_LINT_HOOK_PATH"
  fi
}

create_commit_msg_hook() {
  echo "npx --no -- commitlint --edit \"\$1\"" > "$COMMIT_LINT_CMT_MSG_HOOK_PATH"
  chmod u+x "$COMMIT_LINT_CMT_MSG_HOOK_PATH"
}

setup_local_git_hooks_path() {
  git config --local core.hooksPath "$COMMIT_LINT_HOOK_PATH"
}

set -e

ensure_hook_dir
create_commit_msg_hook
setup_local_git_hooks_path
