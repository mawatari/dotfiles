# ------- #
# 履歴設定 #
# ------- #

# 履歴の出力先
HISTFILE=~/.zsh_history

# 履歴の件数
HISTSIZE=1000000
SAVEHIST=1000000

# 直前のコマンドとの重複を削除
setopt hist_ignore_dups

# 履歴に追加されるコマンドが古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

# 余分な空白は詰める
setopt hist_reduce_blanks

# 履歴を共有する
setopt share_history

# 先頭にスペースが有る場合は履歴に残さない
setopt hist_ignore_space

# 履歴からコマンド補完
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
