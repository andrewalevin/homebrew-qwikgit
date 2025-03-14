#!/bin/bash

SCRIPT_NAME="qwikgit"

show_help() {
  cat <<EOF
$SCRIPT_NAME - Git auto-commit and push with timestamp

Usage:
  $SCRIPT_NAME [commit message]   Commit and push changes with a timestamp
  $SCRIPT_NAME -v, --version      Show version information
  $SCRIPT_NAME -h, --help         Show this help message

Examples:
  $SCRIPT_NAME                    # Auto-commit with timestamp
  $SCRIPT_NAME "Fix bug"          # Commit with timestamp + custom message
  $SCRIPT_NAME Fix bug and build  # Commit with timestamp + custom message + Works without " "
EOF
}

show_version() {
  echo "Qwik Git Version: ";
  BREW_INFO=$(brew info qwikgit)
  echo "$BREW_INFO";
}

commit_and_push() {
  DATE=$(date +"%Y-%m-%d %T")
  COMMIT_MESSAGE="$DATE"

  if [ $# -gt 0 ]; then
    COMMIT_MESSAGE="$DATE $*"
  fi

  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Error: Not a git repository." >&2
    exit 1
  fi

  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push
}

case "$1" in
  -h|--help) show_help; exit 0 ;;
  -v|--version) show_version; exit 0 ;;
  *) commit_and_push "$@" ;;
esac