.PHONY: install

install:
	mkdir -p "${HOME}/.tmux/tmux-powerline"
	cp -f "./.tmux.conf" "${HOME}/.tmux/.tmux.conf"
	rm -f "${HOME}/.tmux.conf"
	ln -s "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"
	cd "./tmux-powerline" && git archive master --format tar \
		| tar -x -C "${HOME}/.tmux/tmux-powerline"
uninstall:
	rm -rf "${HOME}/.tmux"
	rm "${HOME}/.tmux.conf"
