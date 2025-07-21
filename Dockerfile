# Use official Python 3.10 slim image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY app.py .

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
