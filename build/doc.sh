#!/bin/bash
set -e
set -o pipefail
rm -rf *.txt
ls ../chapters/*.asc | xargs -n1 basename | sed 's/\.asc//' | awk '{print "cp ../chapters/"$1".asc "$1".txt"}' | source /dev/stdin
asciidoctor *.txt
