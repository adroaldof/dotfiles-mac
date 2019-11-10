" =============================================================================
" Load plugins
" =============================================================================
"
so ~/.config/nvim/plugins.vim


" =============================================================================
" Configurations
" =============================================================================
"
let mapleader=";"
colorscheme solarized        	  " Set color theme
set spell spelllang=en_us

set number                      " Line numbers are good
set relativenumber              " Set relative numbers to vim
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set nrformats=                  " Set decimals numers as default
set hidden			                " Enable background Buffers 
set mouse=a			                " Enable mouse


" =============================================================================
" Swap Files
" =============================================================================
"
set noswapfile
set nobackup
set nowb

" =============================================================================
" Clipboard
" =============================================================================
"
" Copy to clipboard
" vnoremap  <leader>y  "+y
" nnoremap  <leader>Y  "+yg_
" nnoremap  <leader>y  "+y
" nnoremap  <leader>yy  "+yy

" Paste from clipboard
" nnoremap <leader>p "+p
" nnoremap <leader>P "+P
" vnoremap <leader>p "+p
" vnoremap <leader>P "+P


" =============================================================================
" Search
" =============================================================================
"
set inccommand=split
set incsearch                   " Find the next match as we type the search
set hlsearch                    " Highlight searches by default
set ignorecase                  " Ignore case when searching...
set smartcase                   " ...unless we type a capital


" =============================================================================
" Indentation
" =============================================================================
"
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
" 
" " Auto indent pasted text
" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>
" 
" filetype plugin on
" " filetype indent on
" 
" " set list listchars=tab:\ \ ,trail:· " Show tabs and trailing spaces visually
" 
" set nowrap                      " Don't wrap lines
" set linebreak                   " Wrap lines at convenient point


" =============================================================================
" Scrolling
" =============================================================================
"
set scrolloff=8                 " Start scrolling when 8 lines from margins
set sidescrolloff=15
set sidescroll=1


" =============================================================================
" Folding
" =============================================================================
"
set foldmethod=indent           " Fold based on indent
set foldnestmax=3               " Deepest fold is 3 levels
set nofoldenable                " Dont fold by defaul


" =============================================================================
" Completion
" =============================================================================
"
set wildmode=list:longest
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches

set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=bower_components/**
set wildignore+=node_modules/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=__pycache__/**


" =============================================================================
" Bindings
" =============================================================================
"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>
