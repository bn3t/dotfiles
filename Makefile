install:  install-zsh install-git install-vim install-vscode

install-sh:
	rm -f ~/.profile ~/.myprofile
	ln -s `pwd`/sh/profile.sh ~/.profile

install-zsh: install-sh
	rm -f ~/.zshrc ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc.zsh ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc


install-bash: install-sh
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-psql:
	rm -f ~/.psqlrc
	ln -s `pwd`/psql/psqlrc ~/.psqlrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-virtualenvwrapper:
	mkdir -p ~/.virtualenvs
	ln -sf `pwd`/virtualenvwrapper/* ~/.virtualenvs

install-python:
	rm -f ~/.pythonstartup.py
	ln -s `pwd`/python/pythonstartup.py ~/.pythonstartup.py

dump-terminal-settings:
	cp ~/Library/Preferences/com.apple.Terminal.plist terminal
	plutil -convert xml1 terminal/com.apple.Terminal.plist

install-vscode:
ifeq ($(shell uname),Darwin)
ifneq ("$(wildcard ~/Library/Application\ Support/VSCodium/User)","")
	@echo Installing settings for VSCodium
	rm -f ~/Library/Application\ Support/VSCodium/User/settings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json
	ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/VSCodium/User/
	ln -s `pwd`/vscode/keybindings.json ~/Library/Application\ Support/VSCodium/User/
endif
ifneq ("$(wildcard ~/Library/Application\ Support/Code/User)","")
	@echo Installing settings for VS Code
	rm -f ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/keybindings.json
	ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User/
	ln -s `pwd`/vscode/keybindings.json ~/Library/Application\ Support/Code/User/
endif
endif
ifeq ($(shell uname),Linux)
	echo Linux
ifneq ("$(wildcard ~/.config/Code\ -\ OSS/User)","")
	@echo Installing settings for VSCodium
	rm -f ~/.config/Code\ -\ OSS/User/settings.json ~/.config/Code\ -\ OSS/User/keybindings.json
	ln -s `pwd`/vscode/settings.json ~/.config/Code\ -\ OSS/User/
	ln -s `pwd`/vscode/keybindings.json ~/.config/Code\ -\ OSS/User/
endif
endif

install-terminal-settings:
ifeq ($(shell uname),Darwin)
	cp ~/Library/Preferences/com.apple.Terminal.plist terminal/old-settings.bak
	cp terminal/com.apple.Terminal.plist ~/Library/Preferences
	@echo "Old terminal settings were saved in terminal folder"
endif

install-keybindings:
	rm -f ~/Library/KeyBindings/DefaultKeyBinding.dict
	mkdir -p ~/Library/KeyBindings
	cp `pwd`/osx/DefaultKeyBinding.dict ~/Library/KeyBindings/DefaultKeyBinding.dict
