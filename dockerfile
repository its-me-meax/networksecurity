# Use modern Python base image with Debian Bookworm
FROM python:3.10-slim-bookworm

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Optional: show contents for debugging
RUN ls -l /app

# Upgrade pip separately to isolate errors
RUN pip install --no-cache-dir --upgrade pip

# Install AWS CLI and Python dependencies
RUN pip install --no-cache-dir awscli && \
    pip install --no-cache-dir -r requirements.txt

# Default command to run your app
CMD ["python3", "app.py"]