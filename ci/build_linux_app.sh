#!/usr/bin/env bash
# Build deployable Linux app with PyInstaller

# Activate env
source venv/bin/activate

# Build
pyinstaller --clean -y test_ci/run.py

# Package
#   TODO: Package into a usual form for Linux, such as a .deb for Ubuntu
#       For Windows, use NSIS or similar
#   For now, just tar gz it
#       For Windows, zip it
tar -zcvf dist/run_test_ci.tar.gz dist/run
