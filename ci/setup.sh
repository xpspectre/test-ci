#!/usr/bin/env bash
# Setup environment

# Create virtualenv for project in root dir
/opt/miniconda/bin/python -m venv venv

# Activate env
source venv/bin/activate

# Install requirements
pip install -r requirements.txt
