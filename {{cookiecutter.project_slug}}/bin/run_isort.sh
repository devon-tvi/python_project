#!/usr/bin/env bash
# Run isort - make sure that python imports are properly sorted

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${DIR}/..
. venv/bin/activate

seed-isort-config --exclude venv
time isort -c
