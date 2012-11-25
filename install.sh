echo "linking git config";
ln -s $PWD/dotfiles/gitconfig $HOME/.gitconfig;
echo "linking bash config and aliases";
ln -s $PWD/dotfiles/bashrc $HOME/.bashrc;
ln -s $PWD/dotfiles/bashrc_aliases $HOME/.bashrc_aliases;
echo "linking vim config";
ln -s $PWD/dotfiles/vimrc $HOME/.vimrc;
ln -s $PWD/dotfiles/vim $HOME/.vim;
echo "installing git plugins";
git submodule init;
git submodule update;
echo "DONE!"
