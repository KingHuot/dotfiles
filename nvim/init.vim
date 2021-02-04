syntax enable
set hidden
set nowrap
set t_Co=256
set termguicolors
set smarttab
set smartindent
set autoindent
set colorcolumn=80
set number
set relativenumber
set cursorline
set nobackup
set nowritebackup
set clipboard=unnamedplus

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

let g:gruvbox_transparent_bg=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_termcolors=256
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_italicize_strings=1
colorscheme gruvbox

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
