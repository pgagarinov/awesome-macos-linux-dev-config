#!/bin/bash
set -e
MSGCOLOR=$(tput setaf 3)
NOCOLOR=$(tput sgr0)

SCRIPT_FULL_PATH=$(realpath $0)
SCRIPT_DIR=$(dirname $SCRIPT_FULL_PATH)
printf "${MSGCOLOR}CONFIGURING USER PROFILE...${NOCOLOR}\n"

# Find all files in the directory that start with 'config_'
for script in "$SCRIPT_DIR"/config_*.sh; do
  # Check if the file is executable
  printf "${MSGCOLOR}Executing ${script}...${NOCOLOR}\n"
  "$script"
  printf "${MSGCOLOR}Executing ${script}: done${NOCOLOR}\n"
done
printf "${MSGCOLOR}CONFIGURING USER PROFILE: COMPLETED SUCCESSFULLY!!!${NOCOLOR}\n"
