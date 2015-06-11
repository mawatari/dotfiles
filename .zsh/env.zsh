# ------- #
# 環境設定 #
# ------- #
# 言語設定
export LANG=ja_JP.UTF-8

# 日本語のファイル名を表示できるようにする
setopt print_eight_bit

# Homebrew Cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# nvm install v0.x.x
# nvm alias default v0.x.x
nvm use default

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# Composer
export PATH=$PATH:$HOME/.composer/vendor/bin

# gulp completion
eval "$(gulp --completion=zsh)"
