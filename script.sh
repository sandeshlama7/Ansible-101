#!/bin/bash
poetry install

#Activate the Poetry virtual environment
poetry shell

#Installing uvicorn gunicorn and fastapi
poetry run pip install gunicorn

#Running the server with gunicorn
poetry run gunicorn -w 2 -k uvicorn.workers.UvicornWorker -b 0.0.0.0:8000 server:app
#-w 2: Specifies the number of worker processes.
# -k uvicorn.workers.UvicornWorker: Uses Uvicorn workers for asynchronous support.
# -b 0.0.0.0:8000: Binds to all IP addresses on port 8000.
