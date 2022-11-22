silent! colorscheme gruvbox

let g:git_messenger_include_diff = 'current'

let g:which_key_map = {}

" Custom commands start with space
let mapleader = ' '
set timeoutlen=300

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

if exists('*which_key#register')
  call which_key#register('<Space>', 'g:which_key_map')
endif
