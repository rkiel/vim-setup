#### MacVim
* "Google Code Overview":http://code.google.com/p/macvim/
* move MacVim into Applications
* move mvim to Desktop
* launch MacVim and authenticate 

```
mkdir -p ~/GitHub/macvim-dev
cd ~/GitHub/macvim-dev
git clone https://github.com/macvim-dev/macvim.git
cd macvim
cd src
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --enable-perlinterp \
            --enable-cscope
make
```
* Test it

```
open MacVim/build/Release/MacVim.app
```

* Install 
  * drag `MacVim/build/Release/MacVim.app` into `Applications`

#### Local Environment

Create local directory

```
mkdir ~/.backup
```

Setup for `vim`

```
ln -nfs ~/GitHub/rkiel/vim-setup/dotfiles/vimrc ~/.vimrc
ln -nfs ~/GitHub/rkiel/vim-setup/dotfiles/vim ~/.vim
```

