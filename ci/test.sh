#!/usr/bin/env bash
# Run unit tests on development install

# Activate env
source venv/bin/activate

# Show python version check
python  --version

# Run tests in tests/ dir
python -m unittest
