#! /usr/bin/env bash

# Run all pytest unit tests.
# Will exit non-zero if any unit tests fail unexpectedly.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${DIR}/..

pytest test
