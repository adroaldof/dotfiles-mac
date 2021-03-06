" =============================================================================
" Base 16 colors
" =============================================================================
"
Plug 'chriskempson/base16-vim'
"
let base16colorspace=256  " Access colors present in 256 colorspace


" =============================================================================
" Vertical line indentation
" =============================================================================
"
Plug 'Yggdroot/indentLine'
"
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'


" =============================================================================
" Vertical line indentation
" =============================================================================
"
Plug 'itchyny/lightline.vim'
"
" If not work set the follow line on '.vimrc'
set laststatus=2 " Light line config

" Use status bar even with single buffer
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'nightowl',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'fileformat', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'GetCustomReadOnly',
      \   'fugitive': 'GetGitBranch',
      \   'filename': 'GetFileName'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '|' },
      \ 'subseparator': { 'left': '⮁', 'right': '|' }
      \ }

"      \   'filetype': 'GetFileType',
"      \   'fileformat': 'GetFileFormat'

function! GetCustomReadOnly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤ "
  else
    return ""
  endif
endfunction

function! GetGitBranch()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! GetFileName()
  return ('' != GetCustomReadOnly() ? GetCustomReadOnly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction

function! GetFileType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! GetFileFormat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" =============================================================================
" Colors
" =============================================================================
"
" Plug 'skwp/vim-colors-solarized'
"
" set termguicolors
" syntax enable                   " Enable syntax highlight
" set background=dark		          " Set background to dark color

Plug 'haishanh/night-owl.vim'
" set termguicolors
" syntax enable
" colorscheme night-owl
" let g:lightline = { 'colorscheme': 'nightowl' }

