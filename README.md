𝔣𝔩𝔬𝔤𝔤𝔦𝔱
=======

Floggit is a fast commandline git log viewer, with vim-like keybindings that are fully configured by default, but completely configurable and extendable if desired.

Usage
-----

Start `floggit` in a git repository to see a log with commit message headers.

Default keybindings:

```
gq               Quit
<control-hjkl>   Move between windows
<enter>          Open commit at cursor
<space>g         Browse global / current file keybindings
<space>gs        Open git status window
<space>m         Open menu on current commit
<space>h         Move to previous tab
<space>l         Move to next tab
```

How it works
------------

Under the hood, this is just a script that calls NeoVim, passing along [its own vimrc](init_floggit.vim) to use, so that your own vimrc, even if present, is neither read nor affected. [This list of plugins](default_plugins.vim) is used; some of those were specifically made for floggit, and just contain keybindings for the plugins. This makes it easy to override parts of floggit while leaving other parts standard, or adding on configuration while keeping defaults.

Installation
------------

Install the prerequisites:

```
sudo apt install nvim curl git
```

Download floggit:

```
git clone git@github.com:TamaMcGlinn/floggit
```

Install the plugins:

```
curl -fLo ~/.floggit/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then add the floggit/bin directory to your $PATH, and start floggit the first time passing `-c PlugInstall` to install the plugins. For example, if you cloned floggit in your $HOME directory, put this in ~/.bashrc:

```
export PATH="$PATH:$HOME/floggit/bin"
```

Then open a new terminal and run `floggit -c PlugInstall`.

Configuration
-------------

Adding to ~/.floggit/floggitrc.vim is the simplest way. Any valid vimscript can be added there; for example, to add a keybinding to make the current file executable, you could add:

```vimscript
nnoremap <leader>fx :!chmod +x %<CR>
```

If you want to add (neo)vim plugins to floggit, add Plug installation lines to your ~/.floggit/extra_plugins.vim, for example, to install [vim-markdown](https://github.com/tpope/vim-markdown):

```vimscript
Plug 'tpope/vim-markdown'
```

If you want to remove the default plugins, write to ~/.floggit/plugins.vim, and the defaults will not be loaded.
