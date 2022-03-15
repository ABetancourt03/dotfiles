" Set compatibility to Vim only.
set nocompatible
set nolist
set rnu
" Helps force plug-ins to load correctly when it is turned back on below.
filetype on

" Turn on syntax highlighting.
syntax on
syntax enable

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
"set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

"Fix Clipboard
set clipboard=unnamed

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load fold
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>

call plug#begin('~/.vim/plugged')

" themes
Plug 'tomasiser/vim-code-dark' "colorscheme codedark
Plug 'morhetz/gruvbox' "colorscheme gruvbox
Plug 'NLKNguyen/papercolor-theme' "colorscheme PaperColor, set background=dark
Plug 'tomasr/molokai' "colorscheme molokai
Plug 'pR0Ps/molokai-dark' "molokai-dark
Plug 'sonph/onehalf' "colorscheme onehalflight
Plug 'joshdick/onedark.vim' "colorscheme onedark
Plug 'ntk148v/vim-horizon' "colorscheme horizon
Plug 'nanotech/jellybeans.vim' "colorscheme jellybeans
Plug 'severij/vadelma' "colorscheme vadelma
Plug 'danilo-augusto/vim-afterglow' "colorscheme afterglow
Plug 'ayu-theme/ayu-vim' "colorscheme ayu
Plug 'sainnhe/gruvbox-material' "colorscheme gruvbox-material
Plug 'jsit/toast.vim' "colorscheme toast
Plug 'phanviet/vim-monokai-pro' "colorscheme monokai_pro
Plug 'dracula/vim' "colorscheme dracula
Plug 'dikiaap/minimalist' "colorscheme minimalist
Plug 'markvincze/panda-vim' "colorscheme panda
Plug 'lifepillar/vim-solarized8'

" IDE
Plug 'preservim/nerdcommenter'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'

" vim lightline
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightline-gruvbox.vim'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" code info
Plug 'APZelos/blamer.nvim'

" code navigation
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" typing
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" syntax
Plug 'tpope/vim-haml'
Plug 'gko/vim-coloresque'
Plug 'hail2u/vim-css3-syntax'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'mgechev/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'vim-python/python-syntax'

" autocomplete
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim signify
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()

" colorscheme
set termguicolors
colorscheme gruvbox
let ayucolor='mirage'
let g:gruvbox_dark_contrast='hard'
set background=dark

" vim airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

" vim lightline
"let g:lightline = {
      "\ 'colorscheme': 'onedark',
      "\ }

" coc plugins
let g:coc_global_extensions = [
\  'coc-tsserver',
\  'coc-css',
\  'coc-html',
\  'coc-python',
\  'coc-json',
\  'coc-emmet',
\  'coc-prettier',
\  'coc-discord',
\  'coc-svelte',
\  'coc-tailwindcss',
\  'coc-html-css-support',
\  'coc-eslint'
\ ]

" code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> do <Plug>(coc-codeaction)

"set mouse=a

let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" switch buffers
map <Tab> :bnext<CR>
map <S-Tab> :bprev<CR>

" Autocompletado
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Fix backspace indent
set backspace=indent,eol,start

" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" emmet vim
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript,jsx,typescript,tsx EmmetInstall

" jsx syntax config
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

" tsx syntax config
let g:tsx_ext_required = 0
let g:tsx_pragma_required = 1

nnoremap <Leader>; $a;<Esc>

" buffers
map <Leader>b :Buffers<cr>

" run current file
nnoremap <Leader>n :!node %<cr>

" vim signify
set updatetime=100

" emmet jsx
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends': 'tsx'
\  }
\}

" blamer
let g:blamer_enabled = 0
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0
let g:blamer_prefix = '   '
let g:blamer_template = '<committer> | <summary>'
let g:blamer_date_format = '%d/%m/%y'
let g:blamer_relative_time = 1

set splitright

:imap ii <Esc>
