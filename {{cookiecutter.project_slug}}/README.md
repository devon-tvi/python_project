# {{cookiecutter.project_name}} - {{cookiecutter.project_slug}} 

Description: {{cookiecutter.project_short_description}}


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

Unit tests located in the `test` directory are automatically run during the CI build. You
can run them manually with:

```
./bin/run_tests.sh
```


### Local Linting

To run all local linting at once, use `run_checks.sh`

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


{% if cookiecutter.enable_pre_commit_hooks == 'y' %}
### Using pre-commit

First you need to init the repo as a git repo with:

```
git init
```

Then you can set up the git hook scripts with:

```
pre-commit install
```

By default:

* black
* pylint
* isort

Are all run in check-mode and must pass in order to actually make the commit.

If you'd like skip these checks you can commit with:

```
git commit --no-verify
```

If you'd like to quickly run these pre-commit checks on all files (not just the staged ones) you
can run:

```
pre-commit run --all-files
```



{% endif %}
## Contribution guidelines

* See [TVision Guidelines and Values for Engineering Practice](
https://tvision.atlassian.net/wiki/spaces/TVIPD/pages/30277643/Guidelines+and+values+for+engineering+practice)

* See [TVision Python Style Guide](
https://tvision.atlassian.net/wiki/spaces/TVIPD/pages/821559312/Python+Style+Guide)
