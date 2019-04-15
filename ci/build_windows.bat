:: Setup environment, test, build, and package

:: Create virtualenv for project in root dir
python -m venv venv

:: Activate env
::  Must do this to call bat in bat
call venv\Scripts\activate.bat

:: Show python version check
python  --version

:: Install wheel, which is may be missing from virtualenv
pip install wheel

:: Install requirements
pip install -r requirements.txt

:: Run tests in tests\ dir
python -m unittest

:: Make PyPI package
python setup.py bdist_wheel

:: Build Windows app
pyinstaller --clean -y test_ci\run.py

:: Package
7z a dist\run_test_ci.zip .\dist\run\*
