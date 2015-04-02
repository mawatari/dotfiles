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

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
