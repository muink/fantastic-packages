#!/bin/bash
#
# Path relative to this Pepo
SERVER_HOME=releases/
find ${SERVER_HOME} -type d | sed 's|/$||g' | xargs -I{} touch "{}/index.md"
