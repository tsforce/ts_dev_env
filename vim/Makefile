include $(topdir)/Makefile.common

vimdir := vim
vimrc := vimrc
vimplugins := vim
vim_bashrc := vim.bashrc
config := config

all:
	test -d $(topdir)/$(USER_ENV)/$(vimdir) || mkdir $(topdir)/$(USER_ENV)/$(vimdir)
	cp $(vim_bashrc) $(topdir)/$(USER_ENV)/$(BASH_OUT)
	cp $(vimrc) $(topdir)/$(USER_ENV)/$(vimdir)
	cp -r vimrcs $(topdir)/$(USER_ENV)/$(vimdir)
	cp $(config)/* $(topdir)/$(USER_ENV)/$(vimdir)
	cp -r tools $(topdir)/$(USER_ENV)/$(vimdir)
	cp -r bundle $(topdir)/$(USER_ENV)/$(vimdir)

clean:
	cd $(topdir)/$(USER_ENV) && rm -rf $(topdir)/$(USER_ENV)/$(vimdir) $(BASH_OUT)/$(vim_bashrc)

notes:
	@echo ""
	@echo "=======================VIM NOTE=========================="
	@echo "please open vim, and run :PluginInstall to complete the plugin's installation"
	@echo "after that, run cd $(topdir)/$(USER_ENV)/vim/bundle/YouCompleteMe && ./install.sh --clang-completer"
	@echo "or ./install.sh --clang-completer --system-libclang"

.PHONY: all clean notes clang
