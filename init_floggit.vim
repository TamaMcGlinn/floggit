
let g:floggit_config_dir = expand('~/.floggit')
call plug#begin(g:floggit_config_dir . '/plugged')

if filereadable(g:floggit_config_dir . "/plugins.vim")
  execute "source " . g:floggit_config_dir . "/plugins.vim"
else
  execute "source " . expand("$FLOGGIT_DIR/default_plugins.vim")
endif

if filereadable(g:floggit_config_dir . "/extra_plugins.vim")
  execute "source " . g:floggit_config_dir . "/extra_plugins.vim"
endif

call plug#end()

execute "source " . expand("$FLOGGIT_DIR/settings.vim")

function! Floggit_Start() abort
  let l:opencmd='-open-cmd=edit'
  call flogmenu#open_git_log(l:opencmd)
endfunction

command! -nargs=0 Floggitstart call Floggit_Start()

" source floggitrc.vim here, so that Floggit_Start() can be overridden there
if filereadable(expand(g:floggit_config_dir . "/floggitrc.vim"))
  execute "source " . g:floggit_config_dir . "/floggitrc.vim"
endif
