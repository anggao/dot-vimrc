### my personal dotfiles and vimrc, probaly not suitable for everyone :)
==========================================================

## Installation
1. backup your old vim/zsh/tmux configuration file:

        mv ~/.zshrc ~/.zshrc.orig
        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig
        mv ~/.tmux.conf ~/.tmux.conf.orig
        
2. Clone and install this repo:
        
        git clone git://github.com/anggao/dot-vimrc.git ~/.dot-vimrc
        ln -s ~/.dot-vimrc/.vimrc ~/.vimrc
        ln -s ~/.dot-vimrc/.vim ~/.vim
        ln -s ~/.dot-vimrc/.zshrc ~/.zshrc
        ln -s ~/.dot-vimrc/.tmux.conf ~/.tmux.conf

3. Setup `oh-my-zsh`:

        git clone git://github.com/anggao/oh-my-zsh.git ~/.oh-my-zsh

4. Setup `vundle`:

        cd ~/.dot-vimrc
        git submodule init
        git submodule update

5. Install bundles. Launch vim(Ignore the errors and they will disappear after installing needed plugins) and run:
		
        :BundleInstall

Thst's it!
