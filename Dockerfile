# Use the official lightweight Python image
FROM python:3.12-slim

# Set the working directory to the root of the project
WORKDIR /Users/joeboy/Documents/HNG12-Stage2-FastAPI-Ci-Cd

# Copy the requirements file
COPY requirements.txt .

# Install necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port that Uvicorn will run on
EXPOSE 8000

# Start the FastAPI application
CMD ["sh", "-c", "uvicorn main:app --host 0.0.0.0 --port ${PORT:-8000}"]

