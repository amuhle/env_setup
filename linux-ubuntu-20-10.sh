# NOTES #
# Environment set up
## Operating System: Ubuntu 20.10

## Create ssh keys
  #- ssh-keygen -t rsa -C "alvaro.muhlethaler@gmail"
  #- Add ssh-key to github

###### Run as sudo ######

### Common tools
apt install curl
apt install git
apt install zsh
apt install neovim
apt install fzf
apt install nodejs
apt install silversearcher-ag
apt install powerline fonts-powerline
apt install tmux

git clone git@github.com:amuhle/dotfiles.git ~/dotfiles

### zsh setup
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Ruby
curl -sSL https://get.rvm.io | bash
rvm install ruby-2.7.1
rvm install ruby-2.6.3

### vim
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim

### tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local

### tmuxinator
gem install tmuxinator

### lotion (a linux client for Notion)
apt install p7zip-full
curl https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > lotion_setup.sh
chmod +x lotion_setup.sh
./lotion_setup.sh

### htop
apt install htop

### Rust / cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


### Pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
chmod +x ./get-pip.py
python3 ./get-pip.py

