# ---------- #
# 操作関連設定 #
# ---------- #

# --- #
# 補完 #
# --- #
# zsh-completionsを読み込む
if [ -e $(brew --prefix)/share/zsh-completions ]; then
    fpath=($(brew --prefix)/share/zsh-completions $fpath)
fi

# 補完を有効にする
autoload -Uz compinit && compinit -u

# 補完の時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完リストでキー移動も可能とする
zstyle ':completion:*:default' menu select=1

# 補完リストが表示された場合は最初の候補を選択状態にする
# setopt menu_complete

# 補完リストは出来る限り詰めて表示する
setopt list_packed

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# aliasを補完候補に含める
setopt complete_aliases

# ドットファイルを補完候補に含める
setopt globdots

# 補完対象にしないリスト
zstyle ':completion:*:*files' ignored-patterns '.DS_Store' '*?~'

# 履歴を元に予測補完する
# autoload predict-on && predict-on



# ----- #
# その他 #
# ----- #
# コマンド名をtypoした場合に正しいものを提案させる
setopt correct

# ディレクトリ名だけの入力で移動する
setopt auto_cd

# cdでpushdする
setopt auto_pushd

# pushdの履歴に同じディレクトリは残さない
setopt pushd_ignore_dups

# pushdの履歴数
DIRSTACKSIZE=10

# beepを消す
setopt nolistbeep
