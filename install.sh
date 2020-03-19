#!/usr/bin/env bash

printf "Let me install the script for you, it will only be one second\n"

printf "Installation started\n"

printf "I need to make this executable\n"
# Make script executable
chmod +x update.sh

# Get repository path
repository_folder=$(pwd)
printf "The script is being installed in: $repository_folder\n"

# Save alias
printf "Remove alias if exists\n"
awk '!/alias git-update/' ~/.bashrc > temp && mv temp ~/.bashrc
awk '!/alias git-update/' ~/.zshrc > temp && mv temp ~/.zshrc

printf "Save git-update alias\n"
echo "alias git-update='$repository_folder/update.sh'" >> ~/.bashrc
echo "alias git-update='$repository_folder/update.sh'" >> ~/.zshrc


printf "Installation completed!\n\n"
printf "You can use the command by typing git-update in the terminal\n"