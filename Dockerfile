# Use an official lightweight Python image.
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port
EXPOSE 5000

# Run the command to start the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
