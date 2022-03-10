brew install gh git rsync tree

# ~ configuring git

git config --global user.name "Neeraj Dalal"
git config --global user.email "admin@nrjdalal.com"
git config --global init.defaultBranch "main"

# ~ font-fira-code

brew tap homebrew/cask-fonts
brew install font-fira-code

# ~ zsh-autosuggestions

brew install zsh-autosuggestions
read -r -d '' VAR <<END
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bg=#000000,fg=#333333"
END
grep -Fqx $VAR ~/.zshrc || echo "$VAR" >>~/.zshrc

# ~ zsh-syntax-highlighting

brew install zsh-syntax-highlighting
read -r -d '' VAR <<END
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
END
grep -Fqx $VAR ~/.zshrc || echo "$VAR" >>~/.zshrc

# ~ zsh-history-substring-search

brew install zsh-history-substring-search
read -r -d '' VAR <<END
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="fg=green,bold,underline"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="fg=red,bold,underline"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
END
grep -Fqx $VAR ~/.zshrc || echo "$VAR" >>~/.zshrc

# ~ dnsmasq.conf

brew install dnsmasq
touch $(brew --prefix)/etc/dnsmasq.conf
read -r -d '' VAR <<END
address=/.next/127.0.0.1
END
grep -Fqx $VAR $(brew --prefix)/etc/dnsmasq.conf || echo "$VAR" >>$(brew --prefix)/etc/dnsmasq.conf
sudo mkdir -p /etc/resolver && sudo zsh -c 'echo "nameserver 127.0.0.1" >/etc/resolver/next'
sudo brew services restart dnsmasq

# ~ mkcert

brew install mkcert nss
mkdir -p $(brew --prefix)/etc/caddy/certs && cd $(brew --prefix)/etc/caddy/certs
mkcert -install && mkcert 'localhost.next' && mkcert '*.localhost.next'

# ~ Caddyfile

brew install caddy
touch $(brew --prefix)/etc/Caddyfile
read -r -d '' VAR <<END
localhost.next {
  tls $(brew --prefix)/etc/caddy/certs/localhost.next.pem $(brew --prefix)/etc/caddy/certs/localhost.next-key.pem
  reverse_proxy localhost:3000
}

*.localhost.next {
  tls $(brew --prefix)/etc/caddy/certs/_wildcard.localhost.next.pem $(brew --prefix)/etc/caddy/certs/_wildcard.localhost.next-key.pem
  reverse_proxy localhost:3000
  header V-Host {labels.2}
}
END
grep -Fqx $VAR $(brew --prefix)/etc/Caddyfile || echo "$VAR" >>$(brew --prefix)/etc/Caddyfile
sudo brew services restart caddy

# ~ brew casks

brew install --cask affinity-designer
brew install --cask affinity-photo
brew install --cask affinity-publisher
brew install --cask figma
brew install --cask firefox
brew install --cask fontbase
brew install --cask google-chrome
brew install --cask iina
brew install --cask mongodb-compass
brew install --cask qbittorrent
brew install --cask telegram
brew install --cask visual-studio-code
brew install --cask whatsapp
