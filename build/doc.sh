#!/bin/bash
set -e
set -o pipefail
ls ../chapters/*.asc | xargs -n1 basename | sed 's/\.asc//' | awk '{print "ln -sf ../chapters/"$1".asc "$1".txt"}' | source /dev/stdin
asciidoctor *.txt
