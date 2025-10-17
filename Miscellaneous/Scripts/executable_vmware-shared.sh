#!/usr/bin/env bash

SHARED="$"
TARGET=

phelp() {
  cat <<EOF
Usage: vmware-shared <flag> <flag> <shared> <target>
Avaible flags:
  -h --help       - Show this help
  -l --list       - List all shared folder
  -m --mount      - Mount shared folder
!!MANUALLY MOUNT ONLY!!
EOF
}

mhelp() {
  cat <<EOF
Usage: vmware-shared --mount/-m <flag> <shared> <target>
Avaible flag for --mount:
  None           - = <shared>
  -h --help      - Show this help
  -p             - Create target if it doesn't exist
EOF
}

list() {
  ALL="$(vmware-hgfsclient)"
  echo "All shared folder: $ALL"
}

unkown() {
  cat <<EOF
UNKOWN FLAGS
Usage -h/--help for more infomation.
EOF
}

mountn() {

}

fmount() {
  if [[ "$2" == "-h" || "$2" == "--help" ]]; then
    mhelp
    exit 0
  elif [[ "$2" == "-p" ]]; then
    echo "Sorry, wait"
  else
  fi
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  phelp
  exit 0
elif [[ "$1" == "-l" || "$1" == "--list" ]]; then
  list
  exit 0
elif [[ "$1" == "-m" || "$1" == "--mount" ]]; then
  fmount
  exit 0
else
  unkown
  exit 1
fi
