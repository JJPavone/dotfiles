#!/bin/bash

# Dock Settings
echo "Setting Dock tile size to 42..."
defaults write com.apple.dock tilesize -int 42

echo "Moving Dock to right side of screen..."
defaults write com.apple.dock orientation -string right

echo "Removing Dock auto-hide"
defaults write com.apple.dock "autohide" -bool "true"

echo "Hiding recent applications in Dock..."
defaults write com.apple.dock show-recents -bool false

# Finder Settings
echo "Hiding desktop icons..."
defaults write com.apple.finder CreateDesktop -bool false

echo "Showing path bar in Finder..."
defaults write com.apple.finder ShowPathbar -bool true

# Restart Dock and Finder to apply changes
echo "Restarting Dock and Finder..."
killall Dock
killall Finder
