" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Vundle
filetype off  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" vastly improved Javascript indentation and syntax support
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'     " tree explorer plugin
Plugin 'tpope/vim-surround'      " quoting/parenthesizing made simple
Plugin 'itchyny/lightline.vim'   " light and configurable statusline/tabline
Plugin 'nanotech/jellybeans.vim' " colorful, dark color scheme
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'raichoo/haskell-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
" determine the type of a file based on its name to to
" allow intelligent auto-indenting for each filetype
filetype plugin indent on    " required
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" General
set number                      " display line numbers
set backspace=indent,eol,start  " allow backspace in insert mode
set showcmd                     " show incomplete cmds down the bottom
set showmode                    " show current mode down the bottom
set gcr=a:blinkon0              " disable cursor blink
set autoread                    " reload files changed outside vim
set hidden                      " hides buffers instead of closing them
syntax on                       " enable syntax highlighting
set nowb                        " prevents automatic write backup
set linebreak                   " wrap between words
set laststatus=2                " always show status line
set ruler                       " show cursor position
set scrolloff=1                 " Start scrolling when we're 1 line away
colorscheme jellybeans

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Search and Completion
set incsearch           " shows search matches as you type
set hlsearch            " highlights search results
set showmatch           " jump to matching bracket
set smartcase           " if caps, watch case
set ignorecase          " if all lowercase, ignore case 
set gdefault            " replaces global by default
set wildmenu            " better command-line completion
set wildmode=full

" Indentation
set autoindent       " keep the same indent on current line
set smartindent
set smarttab
set expandtab        " spaces to be use instead of tabs
set shiftwidth=2     " number of spaces use for autoindenting
set softtabstop=2    " amount of whitespace to be inserted
set tabstop=2        " width of a tab
set shiftround       " round > and < to multiples of shiftwidth

" Mappings
nnoremap <leader><space> :noh<cr>    " search highlight off
nnoremap <M-k> gt                    " tab switching right
nnoremap <M-j> gT                    " tab switching left
map <C-l> :NERDTreeToggle<CR>        " nerd tree shortcut
map <C-p> :PluginInstall<CR>         " vundle plugin install shortcut
let g:user_emmet_leader_key=','      " autocomplete ,,

" Abbreviations
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe
cnoreabbrev B# b#
