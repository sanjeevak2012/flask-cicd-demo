# Use the official Python image
FROM python:3.10-slim

# Set work directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the Flask app
CMD ["python", "app.py"]
# Expose the port the app runs on
EXPOSE 5000