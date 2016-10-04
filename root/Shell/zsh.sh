function nzsh {
	nano ~/.zshrc
}

function szsh {
	source ~/.zshrc
}

function zshf {
	mv ~/.zsh_history ~/.zsh_history_bad
	strings ~/.zsh_history_bad > ~/.zsh_history
	fc -R ~/.zsh_history
}
