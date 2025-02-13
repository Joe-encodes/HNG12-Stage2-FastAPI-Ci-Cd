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

# Expose the required port
EXPOSE 8000

# Set the entry point for the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
