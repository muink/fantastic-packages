#!/bin/bash
#
# Path relative to this Pepo
SERVER_HOME=resources/
find ${SERVER_HOME} -type d | sed 's|/$||g' | xargs -I{} touch "{}/index.md"
