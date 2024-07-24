#!/bin/bash

# Activate the virtual environment
source /home/ubuntu/app_name/.app_name_env/bin/activate

# Start the FastAPI application
cd /home/ubuntu/app_name/service-app_name

#exec python3 main.py
exec uvicorn app.main:app --host 0.0.0.0 --port 8000
