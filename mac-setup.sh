sudo softwareupdate --install-rosetta --agree-to-license

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" << INPUT

INPUT

echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

brew install git
brew install node
brew install wget

brew install --cask balenaetcher
brew install --cask bartender
brew install --cask keka
brew install --cask rectangle
brew install --cask stats

brew install --cask telegram
brew install --cask whatsapp

brew install --cask elmedia-player
brew install --cask figma
brew install --cask firefox
brew install --cask fontbase
brew install --cask google-chrome
brew install --cask mongodb-compass
brew install --cask obs
brew install --cask postman
brew install --cask qbittorrent
brew install --cask typora
brew install --cask visual-studio-code

brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community

wget -O ~/Downloads/designer.dmg 'https://store.serif.com/download/aa4dee/'
hdiutil mount ~/Downloads/designer.dmg
sudo cp -R "/Volumes/Affinity Designer/Affinity Designer.app" /Applications
hdiutil unmount '/Volumes/Affinity Designer'
rm ~/Downloads/designer.dmg

wget -O ~/Downloads/photo.dmg 'https://store.serif.com/download/075b51/'
hdiutil mount ~/Downloads/photo.dmg
sudo cp -R "/Volumes/Affinity Photo/Affinity Photo.app" /Applications
hdiutil unmount '/Volumes/Affinity Photo'
rm ~/Downloads/photo.dmg

wget -O ~/Downloads/publisher.dmg 'https://store.serif.com/download/7ef252/'
hdiutil mount ~/Downloads/publisher.dmg
sudo cp -R "/Volumes/Affinity Publisher/Affinity Publisher.app" /Applications
hdiutil unmount '/Volumes/Affinity Publisher'
rm ~/Downloads/publisher.dmg
