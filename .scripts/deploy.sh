#!/bin/bash
set -e

echo "Deployment started..."

git stash
# Pull the latest version of the app
git pull origin main
echo "New changes copied to server !"

echo "Installing Dependencies..."
/root/.nvm/versions/node/v22.3.0/bin/npm install --yes

echo "Creating Production Build..."
# For ReactJS VueJS and Nuxt JS
/root/.nvm/versions/node/v22.3.0/bin/npm run build

# For NextJS
# npm run export

echo "Deployment Finished!"