# ---------- #
# コマンド設定 #
# ---------- #

# .ssh/configに登録されているホスト一覧を出力する
known_hosts() {
	SSH_CONFIG=$HOME/.ssh/config

	echo "known hosts:"

	if test -f $SSH_CONFIG; then
	    for i in `grep "^Host " ${SSH_CONFIG} | sed s/"^Host "// | grep -v "^\*$"`
	    do
	        echo -n "  ${i}"
	    done
	    echo 
	fi
}
