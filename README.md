# Random Data Image with Docker

This project demonstrates how to use Docker to containerize a Python application that processes data with the `pandas` library. The Python script (`script.py`) will be run inside a Docker container, ensuring a consistent and isolated environment.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
  - [1. Build the Docker Image](#1-build-the-docker-image)
  - [2. Run the Docker Container](#2-run-the-docker-container)
- [Project Contents](#project-contents)
- [Dockerfile Explained](#dockerfile-explained)
- [License](#license)

---

## Prerequisites

Before running the project, ensure you have the following installed on your machine:

- [Docker](https://www.docker.com/products/docker-desktop/) (tested with version 20.10 or later, but other versions should work)

---

## Setup

### 1. Build the Docker Image

To build the Docker image for the project, run the following command from the project root directory (where the `Dockerfile` is located):

```bash
docker build -t random-data-image .
```
This command will build the Docker image and install all required dependencies specified in the Dockerfile.


2. Run the Docker Container
Once the image is built, you can run the Docker container using the command below:

```bash
docker run random-data-image .
```
This will execute the script.py file inside the container. Any output will be displayed in your terminal.


#### Project Contents
The project directory contains the following files:

Dockerfile : The script that defines the Docker image, including the base image, working directory, dependencies, and the command to run the Python script.
script.py : The main Python script that processes the data. (Update with the actual purpose of your script.)
data/ directory (Optional) : A folder that may contain any input or configuration files required by the script.
random-data-image.tar : (Optional) A pre-built Docker image or output archive (if applicable).


#### Dockerfile Explained

``` bash
# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy project files from the host to the container
COPY . .

# Install project dependencies (e.g., pandas)
RUN pip install --no-cache-dir pandas

# Define the command to run the application
CMD ["python", "script.py"]

```

#### Key Points:
Base Image : The python:3.9-slim image is used to keep the environment lightweight and secure.
Working Directory : All operations inside the container take place in the /app directory.
Dependency Installation : pandas is installed as a dependency via pip. You can add more dependencies as needed.
Run Command : The container runs script.py when started.
