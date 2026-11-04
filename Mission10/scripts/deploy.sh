#!/bin/bash
set -e
cd "$(dirname "$0")/.."

command -v docker >/dev/null || curl -fsSL https://get.docker.com | sh
[ -f .env ] || cp .env.example .env

docker compose up -d
docker compose ps
echo "Deployed. Open port 80 in your browser."
