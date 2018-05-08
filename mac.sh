#!/usr/bin/env bash

read -r -d '' sleekr << SLEEKR
 __ _           _           __      _               
/ _\ | ___  ___| | ___ __  / _\ ___| |_ _   _ _ __  
\ \| |/ _ \/ _ \ |/ / '__| \ \ / _ \ __| | | | '_ \ 
_\ \ |  __/  __/   <| |    _\ \  __/ |_| |_| | |_) |
\__/_|\___|\___|_|\_\_|    \__/\___|\__|\__,_| .__/ 
                                             |_|    
SLEEKR

echo -e "\033[92m$sleekr\033[0m"

function color_echo {
  echo -e "\033[33m$1\033[0m"
}

color_echo "Configuring color output for ~/.bash_profile"
cat ./bash_profile >> ~/.bash_profile

color_echo "\nInstalling Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

color_echo "\nInstalling Google Chrome and Firefox"
brew cask install google-chrome
brew cask install firefox

color_echo "\nInstalling Visual Studio Code"
brew cask install visual-studio-code

color_echo "\nInstalling MacVim"
brew install macvim

color_echo "\nInstalling MySQL and starting MySQL service"
brew install mysql
brew services start mysql

color_echo "\nInstalling Yarn"
brew install yarn

color_echo "\nInstalling Graphviz"
brew install graphviz

color_echo "\nInstalling NVM Node.js LTS"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm --version
nvm install --lts

color_echo "\nInstalling Ruby Versioning Manager RVM"
brew install gpg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

color_echo "\nDone!"