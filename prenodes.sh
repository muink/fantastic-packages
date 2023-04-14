#!/bin/bash
#
WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$WORKDIR"
# Path relative to this Pepo
#SERVER_HOME=releases/
find ${SERVER_HOME:=releases/} -type d | sed 's|/$||g' | xargs -I{} touch "{}/index.md"
