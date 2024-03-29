" Plug 'easymotion/vim-easymotion'

" Plug 'szw/vim-maximizer'

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" command mode completion
Plug 'j5shi/CommandlineComplete.vim'
Plug 'hrsh7th/cmp-cmdline'

" markdown
Plug 'tpope/vim-markdown'
Plug 'moorereason/vim-markdownfmt'

" Snippets http://vimcasts.org/episodes/meet-ultisnips/
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Fix gx
" Fix gx see https://github.com/vim/vim/issues/4738
Plug 'TamaMcGlinn/vim-sanergx'

" colorscheme
Plug 'morhetz/gruvbox'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

Plug 'vim-airline/vim-airline'

" (un)commenting with gcc, gcip etc
Plug 'tomtom/tcomment_vim'

" --------------  git -----------------
Plug 'mhinz/vim-signify'
Plug 'TamaMcGlinn/vim-gitremotes'

" GBrowse handlers:
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'TamaMcGlinn/vim-gerritbrowse'

" Terminal stuff
Plug 'akinsho/toggleterm.nvim'
Plug 'TamaMcGlinn/vim-termhere'
Plug 'TamaMcGlinn/vim-dirhere'
Plug 'TamaMcGlinn/vim-browsedir'

" Space menu
Plug 'liuchengxu/vim-which-key'

" other git plugins
Plug 'sodapopcan/vim-twiggy'
Plug 'stsewd/fzf-checkout.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'aacunningham/vim-fuzzy-stash'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'

Plug 'TamaMcGlinn/vim-git-essentials', { 'branch': 'v2' }
Plug 'TamaMcGlinn/vim-floggit-keybindings', { 'branch': 'v2' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'TamaMcGlinn/git-worktree.nvim'

" Flog
Plug 'TamaMcGlinn/vim-fugitive', { 'branch': 'footbazooka' }
Plug 'TamaMcGlinn/vim-flog', { 'branch': 'master' }

" flog extensions
Plug 'skywind3000/vim-quickui'
Plug 'TamaMcGlinn/flog-menu', { 'branch': 'v2' }
Plug 'TamaMcGlinn/flog-teamjump'
Plug 'TamaMcGlinn/flog-forest'
Plug 'TamaMcGlinn/flog-navigate', { 'branch': 'v2' }
Plug 'TamaMcGlinn/vim-autoflog', { 'branch': 'v2' }


Plug 'TamaMcGlinn/vim-instaflog'

Plug 'dsummersl/vimunit'
Plug 'int3/vim-extradite'

Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'roginfarrer/vim-dirvish-dovish'

Plug 'TamaMcGlinn/vim-bettergf'

Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
