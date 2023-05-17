#!/bin/bash

echo -e "${GREEN}[+] Init${NC}"
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}[+] Install Python versions${NC}"
source ~/.bashrc
pyenv install -l
if pyenv install -l; then
  echo ""
else
  echo -e "${RED}[-] pyenv install -l command Error${NC}"
  exit 1
fi
read -p "Please enter the version of Python to install (default 3.7.8): " -e -i "3.7.8" python_version
if pyenv install "$python_version"; then
  echo -e "${BLUE}[~] Python $python_version installed successfully${NC}"
else
  echo -e "${RED}[-] Python $python_version installation failed, please recheck if the installed version exists${NC}"
  exit 1
fi

echo -e "${GREEN}[+] Installed Python versions${NC}"
vers=$(pyenv versions)
echo "pyenv versions:\n$vers"
echo -e "${BLUE}[~] Switch to $python_version${NC}"
pyenv global $python_version

pip install virtualenv
read -p "Please enter the name of the folder to be used (default is venv): " -i "venv" -e folder_name
virtualenv -p ~/.pyenv/versions/$python_version/bin/python $folder_name

PWD=$(pwd)
if virtualenv -p ~/.pyenv/versions/$python_version/bin/python "$PWD"/"$folder_name"; then
    echo -e "${BLUE}[~] Create folder '"$PWD"/"$folder_name"' successfully${NC}"
else
    echo -e "${RED}[-] Failed to create a folder${NC}"
    exit 1
fi

echo -e "${GREEN}[+] Finish${NC}"