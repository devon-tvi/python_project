#! /usr/bin/env bash
# Run pytest test cases and doctest tests in docstrings from anywhere in the module hierarchy.
# First parameter is the test marked expression.
# This defaults to not run 'camera' and 'visualization' tests.
# Any additional parameters are passed along to pytest.

set -e

PROJECT_ROOT="$(dirname $0)/.."
cd "${PROJECT_ROOT}"

TEST_MARKED=${1:-not camera and not visualization and not integration}
if [ "$1" ]; then shift 1; fi

echo "run tests: ${TEST_MARKED}  $@"

export PYTHONPATH=./src:./test # define on separate line, so 'time' bash builtin works in container

time pytest -m "${TEST_MARKED}" "$@"
