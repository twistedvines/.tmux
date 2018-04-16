.PHONY: install

install:
	mkdir -p "${HOME}/.tmux/tmux-powerline"
	mkdir -p "${HOME}/.tmux/plugins/tpm"
	cp -f "./.tmux.conf" "${HOME}/.tmux/.tmux.conf"
	rm -f "${HOME}/.tmux.conf"
	ln -s "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"
	cd "./plugins/tpm" && git archive master --format tar \
		| tar -x -C "${HOME}/.tmux/plugins/tpm"
uninstall:
	rm -rf "${HOME}/.tmux"
	rm "${HOME}/.tmux.conf"
