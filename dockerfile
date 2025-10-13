FROM python:3.10-slim-bullseye

WORKDIR /app

# Install only what you need (awscli via pip is lighter than apt)
RUN pip install --no-cache-dir awscli

# Copy only requirements first to leverage Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of the app
COPY . .

CMD ["python", "app.py"]