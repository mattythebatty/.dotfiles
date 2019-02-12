.PHONY: all bin dotfiles etc

all: dotfiles

dotfiles:
	#from https://github.com/jfrazelle/dotfiles/blob/master/Makefile
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp" -not -name ".irssi" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
		ln -sfn $$file $(HOME)/.oh-my-zsh/custom/$$f.sh; \
	done; \
	
	ln -fn $(CURDIR)/gitignore $(HOME)/.gitignore;

