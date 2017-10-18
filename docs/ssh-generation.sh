#!/bin/bash
# Information steps:
# 1) chmod u+x git-commit.sh
# 2) ./git-commit.sh
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
# https://mediatemple.net/community/products/grid/204644730/using-an-ssh-config-file

echo "Insert your Email:"
read email
ssh-keygen -t rsa -b 4096 -C $email

echo ">> Start ssh agent"
eval "$(ssh-agent -s)"

echo ">> If you're using macOS Sierra 10.12.2 or later, you will need to modify your ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain."
echo ">> Host *"
echo ">> AddKeysToAgent yes"
echo ">>  UseKeychain yes"
echo ">> IdentityFile ~/.ssh/id_rsa"

echo "Add SSH file"
ssh-add -K ~/.ssh/id_rsa
