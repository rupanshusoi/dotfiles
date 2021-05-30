set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'vlime/vlime'
Plug 'wlangstroth/vim-racket'
call plug#end()

au BufNewFile,BufRead *.rg set filetype=regent
set wildmenu
set number
set relativenumber
set ruler
"set smartindent
set shiftwidth=2
set expandtab
set tabstop=4
"set smarttab
:command Wq wq
:command Q q
:command W w
set lazyredraw
set incsearch
set hlsearch
nnoremap j gj
nnoremap k gk
noremap <Leader>s :update<CR>
"nnoremap ; :
nnoremap * *``
:set mouse=a
autocmd BufNewFile,BufRead *.t set syntax=terra
nmap <F7> :NERDTreeToggle<CR>
if &diff
   colorscheme github
"    colorscheme molokai
endif
set timeoutlen=1000 ttimeoutlen=0
set runtimepath^=~/.vim/bundle/vlime/vim
autocmd BufRead,BufNewFile *py,*.htm,*.html,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
