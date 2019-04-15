#!/usr/bin/env bash
# Build PyPI package using setuptools

# Activate env
source venv/bin/activate

# Show python version check
python setup.py sdist bdist wheel
