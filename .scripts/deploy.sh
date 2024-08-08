#!/bin/bash
set -e

echo "Deployment started..."


echo "Installing Dependencies..."

          export NVM_DIR="$HOME/.nvm"
          [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
          [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

          whoami
          git stash
          git pull
          npm install --yes
          npm run build

echo "Deployment Finished!"