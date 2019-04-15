#!/usr/bin/env bash
# Setup environment

# Create virtualenv for project in root dir
/opt/miniconda/bin/python -m venv venv
source venv/bin/activate

# Install requirements
pip install -r requirements.txt
