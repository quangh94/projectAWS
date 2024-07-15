FROM --platform=linux/amd64 python:3.8 as build

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY ./analytics/. /app

## Step 3:
# Install packages from requirements.txt
RUN pip install --upgrade --no-cache-dir pip && \
pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "/app/app.py"]
