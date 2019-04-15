#!/usr/bin/env bash
# Build deployable Linux app with PyInstaller

# Activate env
source venv/bin/activate

# Build
echo "Building Linux app..."
pyinstaller --clean -y test_ci/run.py

# Package
#   TODO: Package into a usual form for Linux, such as a .deb for Ubuntu
#       For Windows, use NSIS or similar
#   For now, just tar gz it
#       For Windows, zip it
echo "Building archive..."
tar -C dist -zcvf dist/run_test_ci.tar.gz run
