MAKE := make
USER_ENV := user_env
BACKUP := backup
MODULES := bash git vim
BASH_SUFFIX := bashrc
ZSH_SUFFIX := zshrc
BASH_OUT := bash
ZSH_OUT := zsh
topdir := $(shell pwd)
xdg_home := $(topdir)/$(USER_ENV)

all:
	@test -d ~/.vim/ || mkdir -p ~/.vim/
	cp -rf bundle ~/.vim/
	@test -d ~/.vimrc || mv ~/.vimrc ~/.vimrc.bk
	cp vimrc ~/.vimrc
	cp -rf vimrcs ~/.vim/
