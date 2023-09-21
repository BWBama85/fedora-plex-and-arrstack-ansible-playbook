#!/usr/bin/env bash

case "${1}" in
"media") ;;
"gitea") ;;
"desktop") ;;
"laptop") ;;
"vms") ;;
*)
  echo "error: specify service to configure (for example: ./scripts/run-playbook media)"
  exit 1
esac

ansible-playbook \
  -i "${HOSTS_FILE}" \
  -l "${1}" \
  --ask-vault-pass \
  ./playbook.yml