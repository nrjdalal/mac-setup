sudo softwareupdate --install-rosetta --agree-to-license

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" <<INPUT

INPUT

echo 'export PATH=/opt/homebrew/bin:$PATH' >>~/.zshrc
source ~/.zshrc

brew install git

brew install --cask blackhole-2ch
brew install --cask rectangle
brew install --cask stats

brew install --cask figma
brew install --cask firefox
brew install --cask fontbase
brew install --cask google-chrome
brew install --cask iina
brew install --cask iterm2
brew install --cask keka
brew install --cask mongodb-compass
brew install --cask qbittorrent
brew install --cask telegram
brew install --cask visual-studio-code
brew install --cask whatsapp

brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community
