" =============================================================================
" Syntax
" =============================================================================
"
Plug 'othree/yajs.vim'
Plug 'HerringtonDarkholme/yats.vim'


" =============================================================================
" JSX
" =============================================================================
"
" Plug 'MaxMEllon/vim-jsx-pretty' " Already on 'vim-poviglot'


" =============================================================================
" NVM
" =============================================================================
"
Plug 'marene/nvm.vim'


" =============================================================================
" Prettier
" =============================================================================
"
Plug 'maksimr/vim-jsbeautify'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType typescript.tsx setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css


" =============================================================================
" Linting
" =============================================================================
"
Plug 'dense-analysis/ale'

let g:ale_sign_error = '☠'
let g:ale_sign_warning = '⚠'

let g:airline#extensions#ale#enabled = 1

function! StatusLineAleErrorMessage() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'OK' : printf(
  \  '%dW %dE',
  \  all_non_errors,
  \  all_errors
  \)
endfunction

set statusline=%{StatusLineAleErrorMessage()}


" =============================================================================
" Auto-import
" =============================================================================
"
Plug 'ludovicchabant/vim-gutentags'
" command: brew install --HEAD universal-ctags/universal-ctags/universal-ctags

Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
let g:js_file_import_sort_after_insert = 1
let g:js_file_import_no_mappings = 1
nnoremap <Leader>if <Plug>(JsFileImport)
nnoremap <Leader>iF <Plug>(JsFileImportList)
nnoremap <Leader>ig <Plug>(JsGotoDefinition)
nnoremap <Leader>iG <Plug>(JsGotoDefinition)
nnoremap <Leader>ip <Plug>(PromptJsFileImport)
nnoremap <Leader>is <Plug>(SortJsFileImport)
nnoremap <Leader>ic <Plug>(JsFixImport)
nmap <C-i> <Plug>(JsFileImport)
nmap <C-u> <Plug>(PromptJsFileImport):w


