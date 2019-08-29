#! /usr/bin/env bash

# Run all code checks to make sure code meets formatting standards.
# Will exit non-zero if there are errors or improperly formatted code.

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/run_pylint.sh
$DIR/run_isort.sh
$DIR/run_black.sh
