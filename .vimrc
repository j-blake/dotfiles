" See https://github.com/dense-analysis/ale#faq-coc-nvim
let g:ale_disabled_lsp = 1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/custom_plugins')

" Make sure you use single quotes
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-python/python-syntax'
Plug 'elixir-editors/vim-elixir'
" Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'dense-analysis/ale'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

" must ensure italics support in terminal
" https://github.com/sonph/onehalf/pull/101
" https://apple.stackexchange.com/questions/266333/how-to-show-italic-in-vim-in-iterm2
syntax on
" Use new regular expression engine (ts performance)
set re=0
set t_Co=256
set number
set cursorline
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set background=dark

colorscheme onehalflight
" colorscheme gruvbox
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors


" Prettier and linting
let g:prettier#autoformat_config_present = 1
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }
let g:ale_fix_on_save = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme='onehalflight'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
" let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=50
let g:NERDTreeShowLineNumbers=1
nnoremap <leader>t :NERDTreeToggle<CR>

