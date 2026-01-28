#!/bin/bash

# 1. Check if a version number was provided as an argument
if [ -z "$1" ]; then
  echo "Error: Missing version number."
  echo "Usage: ./deploy.sh <version>"
  exit 1
fi

VERSION="$1"

# 2. Stop the script if any command fails
set -e

echo "Starting deployment for version: $VERSION"

# 3. Execute your commands
git add .
git commit -m "New Version v$VERSION"
git push origin main
mkdocs gh-deploy --force

echo "Success! Version $VERSION has been deployed."