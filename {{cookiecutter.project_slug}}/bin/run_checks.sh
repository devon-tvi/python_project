#! /usr/bin/env bash
# Run all code checks from anywhere in the module hierarchy.
# Command line parameters are not used.

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/run_pylint.sh
$DIR/run_isort.sh
$DIR/run_black.sh
