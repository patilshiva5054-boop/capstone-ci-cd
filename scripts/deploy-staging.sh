#!/bin/bash

echo "🚀 Starting Staging Deployment..."

APP_NAME=backend
IMAGE_NAME=backend-app
PORT=5000

echo "📦 Pulling latest image..."
docker pull $IMAGE_NAME || true

echo "🛑 Stopping old container..."
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "▶️ Starting new container..."
docker run -d \
  --name $APP_NAME \
  -p $PORT:5000 \
  $IMAGE_NAME

echo "⏳ Waiting for app to start..."
sleep 5

echo "🔍 Verifying health..."
curl http://localhost:5000/health

if [ $? -eq 0 ]; then
  echo "✅ Deployment successful!"
else
  echo "❌ Deployment failed!"
  exit 1
fi
