# Use modern Debian Bookworm base (no repo issues)
FROM python:3.10-slim-bookworm

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies (AWS CLI via pip too)
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir awscli -r requirements.txt

# Default command
CMD ["python3", "app.py"]
