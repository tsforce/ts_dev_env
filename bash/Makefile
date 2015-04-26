include $(topdir)/Makefile.common

files := common.bashrc tags.bashrc
env_homerc := env_home.bashrc

all: 
	cp $(files) $(topdir)/$(USER_ENV)/$(BASH_OUT);


clean:
	cd $(topdir)/$(USER_ENV)/$(BASH_OUT) && rm -rf $(files) $(env_homerc);

notes:


.PHONY: all clean
