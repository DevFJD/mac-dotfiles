#!/usr/bin/env bash


# Create folders
mkdir -p ~/Developer/code/go
mdkdir -p ~/Developer/code/mystuff
mkdir -p ~/Developer/code/lab


# Keep sudo alive
sudo -v
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &


# Install xcode CLI
xcode-select —-install


# Install Homebrew
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed successfully"
else
    echo "Homebrew already installed!"
fi


# Install Packages
PACKAGES=(
    zsh
    starship
    tmux
    python
    go
    nvm
    wget
    htop
)

echo "Installing packages..."
brew install ${PACKAGES[@]}


# Install Casks Apps
CASKS=(
    iterm2
    insomnia
    sourcetree
    robo-3t
    sequel-pro
    visual-studio-code
    docker
    brave-browser
    gimp
    inkscape
    spotify
    whatsapp
)
echo "Installing cask apps..."
brew install --cask ${CASKS[@]}


# Remove outdated versions from the cellar.
echo "Running brew cleanup..."
brew cleanup


# Install ohmyzsh
echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
