sudo softwareupdate --install-rosetta --agree-to-license

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" << INPUT

INPUT

echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

brew install git
brew install node

brew install --cask elmedia-player
brew install --cask figma
brew install --cask firefox
brew install --cask fontbase
brew install --cask google-chrome
brew install --cask mongodb-compass
brew install --cask obs
brew install --cask postman
brew install --cask qbittorrent
brew install --cask telegram
brew install --cask typora
brew install --cask visual-studio-code
brew install --cask whatsapp

brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community

brew install --cask bartender
brew install --cask keka
brew install --cask rectangle
brew install --cask stats
