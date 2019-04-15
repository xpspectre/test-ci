#!/usr/bin/env bash
# Run unit tests on development install

# Activate env
source venv/bin/activate


# Run tests in tests/ dir
python -m unittest
