#! /usr/bin/env bash
# Run pylint - make sure python code is correctly styled

set -e

PROJECT_ROOT="$(dirname $0)/.."
cd "${PROJECT_ROOT}"

LIST=${@:-src test}
echo "run checks on: ${LIST}"
export PYTHONPATH=./src:./test # define on separate line, so 'time' bash builtin works in container

time pylint --rcfile=.pylintrc ${LIST}
