"""
Will run after the project has been generated
"""

import os

PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)


def remove_file(filepath):
    os.remove(os.path.join(PROJECT_DIRECTORY, filepath))


if __name__ == '__main__':

    if '{{ cookiecutter.create_author_file }}' != 'y':
        remove_file('AUTHORS.md')

    if '{{ cookiecutter.enable_pre_commit_hooks }}' != 'y':
        remove_file('.pre-commit-config.yaml')
    else:
        os.system("git init")
        os.system("pre-commit install")
        os.system("git add .")
        os.system('git commit -m "init"')

    if '{{ cookiecutter.create_venv_install_reqs }}' == 'y':
        os.system("./bin/create_venv.sh")
