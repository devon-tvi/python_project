#!/usr/bin/env python
import os

PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)


def remove_file(filepath):
    os.remove(os.path.join(PROJECT_DIRECTORY, filepath))


if __name__ == '__main__':

    if '{{ cookiecutter.create_author_file }}' != 'y':
        remove_file('AUTHORS.md')
        remove_file('docs/authors.rst')

    if '{{ cookiecutter.enable_pre_commit_hooks }}' != 'y':
        remove_file('.pre-commit-config.yaml')
