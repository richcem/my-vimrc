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

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 
set fileformat=unix
set fileformats=unix,dos,mac



filetype on                                           "启用文件类型侦测
filetype plugin on                                    "针对不同的文件类型加载对应的插件
filetype plugin indent on                             "启用缩进
set smartindent                                       "启用智能对齐方式
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格

set autoread


set number
