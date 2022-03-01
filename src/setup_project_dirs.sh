#!/usr/bin/env bash
set -euo pipefail

# top level dirs
mkdir -p src configs workflow

# data subdirs
mkdir -p data/external data/raw data/interim data/processed

# configs subdirs
mkdir -p configs/envs


# readme
touch README.md

# git ignore files
gitignore_url="https://raw.githubusercontent.com/ManavalanG/cookiecutter-data-science/master/%7B%7B%20cookiecutter.repo_name%20%7D%7D/.gitignore"
curl $gitignore_url > .gitignore
