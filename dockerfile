# Use a stable, modern Python base image
FROM python:3.10-slim-bookworm

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Update package lists and install AWS CLI (no archived repos needed)
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends awscli && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Default command
CMD ["python3", "app.py"]
