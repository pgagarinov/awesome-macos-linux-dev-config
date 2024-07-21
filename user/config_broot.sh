#!/bin/bash
set -e
if which broot &>/dev/null; then
  broot --install # this step needs to be run for specific user
fi