set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vlime/vlime', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
autocmd BufRead,BufNewFile *.htm,*.html,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2
