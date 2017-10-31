# Dotfiles

## Usage
Use `stow` to link dotfiles to your home directory, e.g.:

```
cd ~/dotfiles
stow vim
```

## Base16 Shell Colors
To use the base16 colorschemes, firstly install the repo:
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```
And then place the following lines in `~/.bashrc` or `~/.zshrc`:
```
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
```
Next, open a new shell and type `base16` followed by a tab to perform tab completion.
For further information, visit: [https://github.com/chriskempson/base16-shell](https://github.com/chriskempson/base16-shell)

## Vim Vundle
`git submodule add https://github.com/VundleVim/Vundle.vim.git vim/.vim/bundle/vundle`
