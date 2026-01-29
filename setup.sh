#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.local/bin
cp "$SCRIPT_DIR/ssh/add-ssh-bashrc.sh" ~/.local/bin/setup-ssh
chmod +x ~/.local/bin/setup-ssh

if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' ~/.bashrc; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

echo "Setup complete. Please restart your terminal or run 'source ~/.bashrc' to apply the changes."