# Step 1: Use an official Python base image
FROM python:3.10-slim

# Step 2: Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Step 3: Set the working directory
WORKDIR /app

# Step 4: Copy the project files into the container
COPY . /app

# Step 5: Install system dependencies (optional: for Jupyter tools to run properly)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Step 6: Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Step 7: Run the notebook using Python script
CMD ["python", "notebook_runner.py"]
