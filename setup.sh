echo -n "ホームディレクトリのdotfilesを上書きします [y/n]"
read answer
case $answer in
    y | yes ) ;;
    *       ) echo "作業をキャンセルしました" ; return ;
esac

ln -fs ~/.dotfiles/.agignore     ~/.agignore
ln -fs ~/.dotfiles/.colordiffrc  ~/.colordiffrc
ln -fs ~/.dotfiles/.gitconfig    ~/.gitconfig
ln -fs ~/.dotfiles/.vim          ~/
ln -fs ~/.dotfiles/.vimrc        ~/.vimrc
ln -fs ~/.dotfiles/.zsh          ~/
ln -fs ~/.dotfiles/.zshrc        ~/.zshrc

echo "完了しました"
