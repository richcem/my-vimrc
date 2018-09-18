call plug#begin('~/vimfiles/plugged')


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'altercation/vim-colors-solarized'
Plug 'liuchengxu/space-vim-dark'

" Initialize plugin system
call plug#end()

source $VIM/_vimrc

syntax enable

set nobackup
set noswapfile
set noundofile

set background=dark
colorscheme solarized


