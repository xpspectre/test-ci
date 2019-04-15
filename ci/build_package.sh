#!/usr/bin/env bash
# Build PyPI package using setuptools
# This needs to run before other building/packaging steps because it creates and places files they depend on, including
#   version information and documentation.

# Activate env
source venv/bin/activate

# Show python version check
python setup.py sdist bdist_wheel
