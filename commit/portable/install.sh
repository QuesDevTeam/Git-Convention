#!/bin/sh

BASE_DIR_PATH=$(cd -- $(dirname $0) && pwd -P)
HOOKS_PATH="$BASE_DIR_PATH/hooks"

printf "1. Git global hook 설정\n"
MESSAGE=$(git config --global --get core.hooksPath)
if [ $? -eq 0 ]; then
  printf "  기존 global git hooks: \n"
  printf -- "  - $MESSAGE\n\n"

  printf "  새 global git hook: \n"
  printf -- "  - $HOOKS_PATH\n\n"
  printf "  액션:\n"
  printf -- "  - y(es)/a(dd): 추가\n"
  printf -- "  - r(eplace): 교체(기존의 hook들은 제거됩니다)\n"
  printf -- "  - n(o)/q(uit): 취소\n"
  printf "  선택: "

  read CONFIRMATION
  printf "\n"
else
  CONFIRMATION="add"
fi

case ${CONFIRMATION:0:1} in
  y|a)
    printf "  기존의 hooks에 새로운 hook을 추가합니다.\n"
    UPDATE_OPTION="--add"
    ;;
  r)
    printf "  새로운 hook을 설정합니다.\n"
    UPDATE_OPTION="--replace-all"
    ;;
  *)
    printf "  Aborting...\n"
    exit 1
    ;;
esac

git config --global "$UPDATE_OPTION" core.hooksPath "$HOOKS_PATH"

printf "  업데이트된 global git hooks:\n"
git config --global --get-all core.hooksPath
printf "\n"

printf "2. \"npm i\"를 실행합니다.\n"
npm i
