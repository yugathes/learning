#!/bin/bash
set -euo pipefail

# Enable debug mode (prints commands before running)
set -x

echo "  Pulling latest images..."
docker compose pull

echo "  Recreating containers..."
docker compose up -d

echo "  Cleaning unused images..."
docker image prune -f

echo "✅ Update complete!"