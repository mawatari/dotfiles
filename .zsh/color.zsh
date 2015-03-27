# ----- #
# 色設定 #
# ----- #

# 色設定を読み込む
# black, red, green, yellow, blue, magenta, cyan, and white
autoload colors && colors

# lsカラーの設定
export CLICOLOR=1

# http://geoff.greer.fm/lscolors/
# BSD LSCOLORS
export LSCOLORS=gxfxcxdxbxegedabagacad
# Linux LS_COLORS
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

# 補完リストに色を付ける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
