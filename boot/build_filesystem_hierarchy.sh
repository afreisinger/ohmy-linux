#!/usr/bin/env bash


###### checkout github repos
mkdir -p ~/github

# Setup SSH pub key for secure interaction with github
# ssh-keygen -t ed25519 -C "krishnam.balamurugan.eng@gmail.com" 
# cat gh_id_ed25519.pub 

# copy public key and create new key in github with this 
# github->"Setting" -> "SSH and GPG keys". Now we are ready for git clone  


if [[ ! -d ~/github/ohmy-linux ]]; then
    echo "cloning ohmy-linux repo..."
    git clone git@github.com:krishnam-eng/ohmy-linux  ~/github/ohmy-linux
fi

if [[ ! -d ~/github/practice-python ]]; then
    echo "cloning practice-python repo..."
    git clone git@github.com:krishnam-eng/practice-python.git ~/github/practice-python
fi

if [[ ! -d ~/github/practice-java-performance-tuning ]]; then
    echo "cloning practice-python repo..."
    git clone git@github.com:krishnam-eng/practice-java-performance-tuning.git ~/github/practice-java-performance-tuning
fi
