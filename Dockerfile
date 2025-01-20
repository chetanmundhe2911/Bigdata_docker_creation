# Use the base image with Python
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your host machine into the container's working directory
COPY . .

# Install Python dependencies (e.g., pandas if needed)
RUN pip install --no-cache-dir pandas

# Command to run the script (update "script.py" with your actual filename)
CMD ["python", "script.py"]
