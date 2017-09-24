# Main Dot Files
---

This is a set of files used to configurate some programs in a develoment machine

## Intall 

To install packages you need firs clone [Vundle](https://github.com/VundleVim/Vundle.vim) repo

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install some system global packages
```bash
apt-get install silversearcher-ag
```

Install some NodeJS global packages
```bash
npm install -g eslint babel-eslint eslint-plugin-react syntastic-react
```

After clonning open vim and intall bundles
```bash
vim

# Inside vim
:BundleInstall
```
---

## Main Keyboard Shortcuts

### Manage Files (Within Vim)

This are the most used Vim shortcuts

|Command    |Info   |
|:---   |:---   |
|`:e` |Reload a external modification on file| 


### [NERDTree](https://github.com/scrooloose/nerdtree)

Some useful shortcuts

```
<C-n> - Toggle NERDTree
`m` - Show useful commands list
`r` - Current node refresh
`R` - Role directory refresh
```


---

## References:
- [5 Essential VIM Plugins That Greatly Increase my Productivity - Joel Hooks](http://joelhooks.com/blog/2013/04/23/5-essential-vim-plugins/)
- [YADR - The best vim,git,zsh plugins and the cleanest vimrc you've ever seen - Yan Pritzker](https://github.com/skwp/dotfiles)
- [asdf](https://www.quora.com/Which-are-the-best-Vim-plugins)
