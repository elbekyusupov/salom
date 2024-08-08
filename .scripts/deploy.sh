#!/bin/bash
set -e

# nvm muhitini sozlash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

echo "Deployment started..."

# Pull the latest version of the app
whoami
cd /home/salom
ls -la
git stash
git pull
echo "New changes copied to server!"

# Install dependencies and build
echo "Installing Dependencies..."
npm install --yes

echo "Creating Production Build..."
npm run build

echo "Deployment Finished!"
