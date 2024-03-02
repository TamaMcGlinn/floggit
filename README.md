𝔣𝔩𝔬𝔤𝔤𝔦𝔱
=======

Floggit is a fast commandline git log viewer, with vim-like keybindings that are fully configured by default, but completely configurable and extendable if desired. It is built as a **D**omain **S**pecific **V**imconfig - a set of vimplugins bundled together with a one-liner that calls (Neo)vim in such a way that the custom vimplugins and customized startup vimrc are used. We also provide our own floggitrc configuration, so that you can run (Neo)vim alongside floggit (and other DSV's) without interfering with the configuration. It's also easy to merge a DSV into an existing Neovim configuration, or combine DSV's by adding one as the config for the other.

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

## Prerequisites:

You need [NeoVim](https://github.com/neovim/neovim/blob/master/INSTALL.md) installed, and curl and git:

```
sudo apt install curl git
```

## Install floggit

There's an install script for Ubuntu:

```
curl -o- https://raw.githubusercontent.com/TamaMcGlinn/floggit/master/install_floggit | bash -x
```

Otherwise, do the following steps:

### Download floggit:

```
git clone git@github.com:TamaMcGlinn/floggit
```

### Install the plugin manager:

```
curl -fLo ~/.floggit/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Add to PATH

Then add the floggit/bin directory to your $PATH, and . For example, if you cloned floggit in your $HOME directory, put this in `~/.bashrc`:

```
export PATH="$PATH:$HOME/floggit/bin"
```

### Install the plugins

You need to run `floggit -c PlugInstall` the first time,
to install the vim plugins. After that you can just do `floggit`.

Updating
--------

Run `floggit -c PlugUpdate` to update the (neo)vim plugins that make floggit tick.

Configuration
-------------

Adding to `~/.floggit/floggitrc.vim` is the simplest way. Any valid vimscript can be added there; for example, to add a keybinding to make the current file executable, you could add:

```vimscript
nnoremap <leader>fx :!chmod +x %<CR>
```

If you want to add (neo)vim plugins to floggit, add Plug installation lines to your `~/.floggit/extra_plugins.vim`, for example, to install [vim-markdown](https://github.com/tpope/vim-markdown):

```vimscript
Plug 'tpope/vim-markdown'
```

If you want to remove the default plugins, write to `~/.floggit/plugins.vim`, and the defaults will not be loaded.
