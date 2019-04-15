#!/usr/bin/env bash
# Setup environment, test, build, and package

# Create virtualenv for project in root dir
python3.7 -m venv venv

# Activate env
source venv/bin/activate

# Show python version check
python  --version

# Install wheel, which is may be missing from virtualenv
pip install wheel

# Install requirements
pip install -r requirements.txt

# Run tests in tests/ dir
python -m unittest

# Make PyPI package
python setup.py bdist_wheel

# Linux does not require a packaged app
