# Use modern Python base image
FROM python:3.10-slim-bookworm

# Set working directory
WORKDIR /app

# Copy only requirements first for caching
COPY requirements.txt /app/

# Upgrade pip and install AWS CLI + dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir awscli && \
    pip install --no-cache-dir -r requirements.txt

# Copy rest of the project files
COPY . /app

# Default command
CMD ["python3", "app.py"]