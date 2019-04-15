#!/usr/bin/env bash
# Setup environment

# Create virtualenv for project in root dir
python3.7 -m venv venv

# Activate env
source venv/bin/activate

# Show python version check
python  --version

# Install requirements
pip install -r requirements.txt