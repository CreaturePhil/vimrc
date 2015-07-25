" important -----------------------------------------------
set nocompatible                     " don't behave like Vi
" moving around, searching and patterns -------------------
set incsearch            " shows search matches as you type
set showmatch                    " jump to matching bracket
set smartcase                         " if caps, watch case
set ignorecase              " if all lowercase, ignore case 
set gdefault                   " replaces global by default
" displaying text -----------------------------------------
set number                           " display line numbers
set linebreak                          " wrap between words
set scrolloff=1 
" syntax, highlighting and spelling -----------------------
set hlsearch                    " highlights search results
set background=dark
" multiple windows ----------------------------------------
set hidden          " hides buffers instead of closing them
set laststatus=2                  " always show status line
" messages and info ---------------------------------------
set showcmd                         " show partial commands
set ruler                            " show cursor position
" editing text --------------------------------------------
set nrformats-=octal " 0-prefixed numbers are still decimal
set backspace=indent,eol,start         " proper backspacing
" tabs and indenting --------------------------------------
set autoindent       " keep the same indent on current line
set smartindent
set expandtab            " spaces to be use instead of tabs
set shiftwidth=2   " number of spaces use for autoindenting
set softtabstop=2     " amount of whitespace to be inserted
set tabstop=2                              " width of a tab
set shiftround   " round > and < to multiples of shiftwidth
" window --------------------------------------------------
set timeout    " fixes slow captial 'o' inserts (all three)
set timeoutlen=1000
set ttimeoutlen=100
set lazyredraw                " redraw only when we need to
" reading, writing, and swp file --------------------------
set nobackup                              " no backup files
set noswapfile                               " no swp files
" command line editing ------------------------------------
set wildmenu               " better command-line completion
set wildmode=full
" gui settings --------------------------------------------
if has("gui")
  set guioptions-=m                       " remove menu bar
  set guioptions-=T                        " remove toolbar
  set guioptions-=r          " remove right-hand scroll bar
  set guifont=Consolas
  set lines=65 columns=110
endif
" ---------------------------------------------------------
" determine the type of a file based on its name to to
" allow intelligent auto-indenting for each filetype
filetype plugin indent on
syntax on                      " enable syntax highlighting
" mappings ------------------------------------------------
nnoremap <leader><space> :noh<cr>    " search highlight off
nnoremap <M-k> gt                     " tab switching right
nnoremap <M-j> gT                      " tab switching left
nnoremap <C-b> <C-W>h:q<CR>                          " exit
" abbreviations -------------------------------------------
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe
