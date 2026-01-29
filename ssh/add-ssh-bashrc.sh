#!/bin/bash

if [ -z $1 ]; then
    echo "Usage: $0 <ssh-key-path>"
    exit 1
fi

SSH_KEY_PATH=$1

cat >> ~/.bashrc << 'EOF'

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" > /dev/null
fi
EOF

echo "ssh-add $SSH_KEY_PATH 2>/dev/null" >> ~/.bashrc

echo "Clé SSH ajoutée à ~/.bashrc"
echo "Relance ton terminal ou fais: source ~/.bashrc"
