set nocompatible              " be iMproved, required
filetype off                  " required


"------------------------------------------------------------
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab


" Display line numbers on the left
set number


" For PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on



" For NERDTREE
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>
