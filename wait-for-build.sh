#!/bin/sh
# Wait for the build folder to be created by the frontend container
# This ensures the backend doesn't start before the frontend build completes

echo "Waiting for frontend build to complete..."
while [ ! -f /app/build/index.html ]; do
  echo "Build not ready yet, waiting..."
  sleep 2
done

echo "Frontend build is ready! Starting backend server..."
exec node index.js

