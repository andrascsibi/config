#!/bin/sh 

set -e

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew install grep

# Apps
apps=(
  zulu 
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --cask --appdir="/Applications" ${apps[@]}

PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

binaries=(
  node
  git
  liquidprompt
  wget
  awscli
  htop
  ffmpeg
  jq
  the_silver_searcher
)
echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

brew tap homebrew/cask

casks=(
  slack
  discord
  iterm2
  steam
  gimp
  sublime-text
  spotify
  vlc
  karabiner-elements
  hammerspoon  
  notion
  signal
)
echo "installing casks"
brew install --cask ${casks[@]}

brew cleanup

