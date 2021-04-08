/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

brew install git
brew install node

brew install --cask figma
brew install --cask firefox
brew install --cask fontbase
brew install --cask google-chrome
brew install --cask handbrake
brew install --cask mongodb-compass
brew install --cask obs
brew install --cask postman
brew install --cask qbittorrent
brew install --cask spotify
brew install --cask stats
brew install --cask telegram
brew install --cask typora
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask whatsapp

brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community

# ---------------------------------------------------------------------------------------------

# sudo softwareupdate --install-rosetta

# brew install --cask rectangle
# brew install --cask background-music
# brew install --cask authy
