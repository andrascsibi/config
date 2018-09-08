#!/bin/sh

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
  java8
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

binaries=(
  node
  git
  liquidprompt
  wget
  awscli
)
echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

brew tap caskroom/cask
brew tap caskroom/versions

casks=(
  slack
  discord
  iterm2
  steam
  gimp
  sublime-text
  spotify
  the_silver_searcher
)
echo "installing casks"
brew cask install ${casks[@]}

brew cleanup

