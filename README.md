### my personal dotfiles and vimrc, probaly not suitable for everyone :)
==========================================================

## Installation
1. backup your old vim configuration file:

        mv ~/.zshrc ~/.zshrc.orig
        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig
        
2. Clone and install this repo:
        
        git clone git://github.com/anggao/dot-vimrc.git ~/dot-vimrc
        ln -s ~/.dot-vimrc/.vimrc ~/.vimrc
        ln -s ~/.dot-vimrc/.vim ~/.vim
        ln -s ~/.dot-vimrc/.zshrc ~/.zshrc

3. Setup `oh-my-zsh`:

        git clone git://github.com/anggao/oh-my-zsh.git ~/.oh-my-zsh

4. Install bundles. Launch vim(Ignore the errors and they will disappear after installing needed plugins) and run:
		
        :BundleInstall

Thst's it!
