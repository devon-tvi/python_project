# {{cookiecutter.project_name}} - {{cookiecutter.project_slug}} 

Should answer:

* Who uses this project?


## Usage

####  Environment variables

#### Correct usage

#### Incorrect usage

## Getting Started

### Dependencies

See the `requirements` directory for required Python modules for building, testing, developing etc.
They can be installed in a [virtual environment](https://docs.python.org/3/library/venv.html) using the follow commands:
```
python3 -m venv venv
. venv/bin/activate
pip install -r requirements/dev.txt requirements/prod.txt requirements/test.txt
```

## Testing

Unit tests located in the `test` directory are automatically run during the CI build.

These scripts make it easier to run tests: `bin/run_tests.sh`, `bin/run_fast_tests.sh`, and for
pylint: `bin/run_checks.sh`.

A number of test marks are define to allow selecting subsets of the tests. These marks are
defined in `pytest.ini` and are not run by default (see `bin/run_tests.sh`) in CircleCI. 
See each marked test for more specific information. 

- `slow` - Tests that take many seconds to run.
- `camera` - Tests that try to find and access the camera.
- `visualization` - Tests that require GUI
- `integration` - Tests that require outside services (databases, TVision APIs)

#### Run a test with debug logging

Here is an example of how to run a test with debug logging. The output will how the source line
number for each log statement.

    bin/run_tests.sh '' --log-cli-level=debug test/huginn_process/test_process_video.py

To only run a single test in a file use '::' and the test name after the file name.
For example: `test/huginn_process/test_process_video.py::test_human_detection_frame_keys`

#### Show statsd metrics being sent

In order to debug what metrics are being sent when it is not convenient to run a `statsd`
server, run the following program in the background (or in a different shell) before running the
main program.

    export PYTHONPATH=./src:./test
    python test/huginn_test/test_statsd.py &

### Local Linting

To run all local linting at once, use `run_checks.sh`

Or install pre-commit hooks using `pre-commit install`. Then on any commit, all the linting checks will
run for any files affected by your commit.

Check mode:

`bin/run_checks.sh`

or
```
bin/run_pylint.sh
bin/run_black.sh
bin/run_isort.sh
```

Auto apply mode:
Note: Pylint will not automatically fix problems

`bin/apply_linters.sh`

or
```
bin/apply_black.sh
bin/apply_isort.sh
```


Pycharm pylint plugin: https://plugins.jetbrains.com/plugin/11084-pylint

Pycharm black plugin: https://plugins.jetbrains.com/plugin/10563-black-pycharm

Alternatively pylint and black can be setup using external tools, or with file watchers see:
http://pylint.pycqa.org/en/stable/user_guide/ide-integration.html#using-external-tools
https://github.com/ambv/black/blob/master/README.md#pycharmintellij-idea

isort does not have a plugin, install as external tool:
https://github.com/timothycrosley/isort/wiki/isort-Plugins


## Contribution guidelines

* See [Guidelines and Values for Engineering Practice](
https://tvision.atlassian.net/wiki/spaces/TVIPD/pages/30277643/Guidelines+and+values+for+engineering+practice)

* See [Python Style Guide](
https://tvision.atlassian.net/wiki/spaces/TVIPD/pages/821559312/Python+Style+Guide)

* Before you merge a PR, make sure you run the following test command with a webcam plugged in and
your machine connected to the internet. This will run the fully verbose test suite.

* "If you touch it, type it!". In the ongoing effort to add typing to this project, a rule of thumb 
is that any function you modify, you must add typing.

