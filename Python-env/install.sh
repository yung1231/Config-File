#!/bin/bash

echo -e "${GREEN}[+] Init${NC}"
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}[+] apt update${NC}"
apt update -y
if [ "$EUID" -eq 0 ]; then
  echo -e "${YELLOW}[~] Running as root user${NC}"
  apt install -y sudo
else
  echo -e "${YELLOW}[~] Running as non-root user${NC}"
fi


echo -e "${GREEN}[+] Updating package repositories${NC}"
sudo apt update -y

echo -e "${GREEN}[+] Installing necessary packages${NC}"
echo -e "${YELLOW}---------------- package (1/3) ----------------${NC}"
sudo apt-get install -y git wget
echo -e "${YELLOW}---------------- package (2/3) ----------------${NC}"
sudo apt-get install -y gcc make build-essential
echo -e "${YELLOW}---------------- package (3/3) ----------------${NC}"
sudo apt-get install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev

echo -e "${GREEN}[+] Cloning pyenv repository${NC}"
git clone --depth 1 https://github.com/pyenv/pyenv.git ~/.pyenv

echo -e "${GREEN}[+] Configuring pyenv${NC}"
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
source ~/.bashrc

echo "${GREEN}[+] Finish${NC}"