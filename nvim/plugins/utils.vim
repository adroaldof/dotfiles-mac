" =============================================================================
" Force to use vim the right way
" =============================================================================
"
Plug 'takac/vim-hardtime'

let g:hardtime_default_on = 3
let g:hardtime_showmsg = 3
let g:hardtime_ignore_buffer_patterns = [ "NERD.*"  ]
let g:hardtime_ignore_quickfix = 3
let g:hardtime_allow_different_key = 2


" =============================================================================
" Language packs
" =============================================================================
"
Plug 'sheerun/vim-polyglot'


" =============================================================================
" Comment toggle
" =============================================================================

Plug 'tomtom/tcomment_vim'


" =============================================================================
" Git gutter
" =============================================================================
"
Plug 'airblade/vim-gitgutter'


" =============================================================================
" CSV files
" =============================================================================
"
Plug 'chrisbra/csv.vim'


" =============================================================================
" Git Wrapper
" =============================================================================
"
Plug 'tpope/vim-fugitive'


" =============================================================================
" Automatic closing of quotes, parenthesis, brackets, etc.
" =============================================================================
"
Plug 'Raimondi/delimitMate'

let delimitMate_expand_cr = 1


" =============================================================================
" Surround
" =============================================================================
"
Plug 'tpope/vim-surround'               " Provides mappings to delete, change and add surroundings 


" =============================================================================
" Editor config
" =============================================================================
"
Plug 'editorconfig/editorconfig-vim'    " Enable editor config on vim


" =============================================================================
" Snippets
" =============================================================================
"
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" Plug 'terryma/vim-multiple-cursors'


