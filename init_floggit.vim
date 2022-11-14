
let g:floggit_config_dir = expand('~/.floggit')
if !filereadable('~/.vim/autoload/plug.vim')
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup plug_install
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  augroup END
endif

" Install vim-plug if not found
if !filereadable('~/.vim/autoload/plug.vim')
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin(g:floggit_config_dir . '/plugged')

if filereadable(g:floggit_config_dir . "/plugins.vim")
  source g:floggit_config_dir . "/plugins.vim"
else
  execute "source " . expand("$FLOGGIT_DIR/default_plugins.vim")
endif

if filereadable(g:floggit_config_dir . "/extra_plugins.vim")
  source g:floggit_config_dir . "/extra_plugins.vim"
endif

call plug#end()

function! Floggit_Start() abort
  execute ":Flog"
endfunction

if filereadable(expand(g:floggit_config_dir . "/floggitrc.vim"))
  source g:floggit_config_dir . "/floggitrc.vim"
endif
