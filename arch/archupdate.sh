#!/bin/bash

echo "Updating system"
sudo pacman -Syu 

echo "Cleaning package cache"
sudo pacman -Sc

echo "Removing unused packages"
sudo pacman -Rns $(pacman -Qdtq) 

#Error printed out with no targets to investigate
