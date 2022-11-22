𝔣𝔩𝔬𝔤𝔤𝔦𝔱
=======

Floggit is a fast commandline git log viewer, with vim-like keybindings that are fully configured by default, but completely configurable and extendable if desired.

Usage
-----

Start `floggit` in a git repository to see a log with commit message headers.

Default keybindings:

```
<enter>        Open commit at cursor
<space>g       Browse global / current file keybindings
<space>gs      Open git status window
<space>m       Open menu on current commit
```

How it works
------------

Under the hood, this is just a script that calls NeoVim, passing along [its own vimrc]() to use, so that your own vimrc, even if present, is neither read nor affected. This allows us

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

Then add the floggit/bin directory to your $PATH, and start floggit the first time passing `-c PlugInstall` to install the plugins.
