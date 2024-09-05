# Use the official Python base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV JUPYTER_PORT=8888

# Install necessary system packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create a working directory
WORKDIR /workspace

# Copy the entire application code into the container
COPY . /workspace/

# Install the package in editable mode
RUN pip install -e .

# Expose the port Jupyter runs on
EXPOSE $JUPYTER_PORT

# Start Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]