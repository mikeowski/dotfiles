all: sync

sync:
	mkdir -p ~/.config/fish
	mkdir -p ~/.config/nvim
	mkdir -p ~/.tmux/

	[ -f ~/.config/fish/config.fish ] || ln -s $(PWD)/config.fish ~/.config/fish/config.fish
	[ -d ~/.config/fish/functions/ ] || ln -s $(PWD)/fish/functions ~/.config/fish/functions
	[ -d ~/.config/nvim/ ] || ln -s $(PWD)/nvim ~/.config/nvim
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf
	#[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -f ~/.config/fish/config.fish
	rm -f ~/.config/nvim
	rm -f ~/.config/fish/functions/
	rm -f ~/.tmux.conf
	#rm -f ~/.gitconfig

.PHONY: all clean sync 
