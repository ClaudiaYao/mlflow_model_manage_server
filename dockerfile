FROM ghcr.io/mlflow/mlflow:latest

# Install psycopg2 dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
 && pip install --no-cache-dir mlflow psycopg2-binary boto3 \
 && rm -rf /var/lib/apt/lists/*
