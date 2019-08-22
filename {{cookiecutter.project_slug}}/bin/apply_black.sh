#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${DIR}/..
. venv/bin/activate

LC_ALL=C.UTF-8 LANG=C.UTF-8 black .
