# Defined in /home/vik/.config/fish/config.fish @ line 11
function fish_user_key_bindings
	fish_vi_key_bindings
	bind -M insert \t accept-autosuggestion
	bind -M insert \e\[Z complete
	bind -M insert \cQ history-search-backward
	bind -M insert \cA history-search-forward
end
