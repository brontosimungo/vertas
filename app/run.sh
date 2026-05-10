#!/bin/bash
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install requests
while true; do python3 app.py; sleep 10; done
