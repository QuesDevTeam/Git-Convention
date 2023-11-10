#!/bin/sh
# This essentially does the same thing as what Husky(https://typicode.github.io/husky) does

COMMIT_LINT_HOOK_PATH="$PWD/.custom_git_hooks"
COMMIT_LINT_CMT_MSG_HOOK_PATH="$COMMIT_LINT_HOOK_PATH/commit-msg"

ERROR_MISSING_NPX=1

ensure_hook_dir() {
  if [ ! -d "$COMMIT_LINT_HOOK_PATH" ]; then
    mkdir "$COMMIT_LINT_HOOK_PATH"
  fi
}

create_commit_msg_hook() {
  # These lines can't be indented properly due to the
  # property of shell script
  cat > "$COMMIT_LINT_CMT_MSG_HOOK_PATH" << EOF
if ! which npx &> /dev/null; then
  echo -n "It doesn't seem like you have \"npx\", which is required"
  echo " to run \"commitlint\"."

  echo "You might want to do something like:"
  echo "  - Installing node/npx"
  echo "  - Run \"nvm use NODE_VERSION_OF_YOUR_CHOICE\""
  exit $ERROR_MISSING_NPX
fi

npx --no -- commitlint --edit "\$1"
EOF

  chmod u+x "$COMMIT_LINT_CMT_MSG_HOOK_PATH"
}

setup_local_git_hooks_path() {
  git config --local core.hooksPath "$COMMIT_LINT_HOOK_PATH"
}

set -e

ensure_hook_dir
create_commit_msg_hook
setup_local_git_hooks_path
