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
