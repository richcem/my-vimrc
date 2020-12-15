call plug#begin('~/vimfiles/plugged')

" UI Plugins
Plug 'altercation/vim-colors-solarized'
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" IDE Plugins
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" Initialize plugin system
call plug#end()

" Map
nnoremap <silent><F5> :AsyncTask run<CR>
nnoremap <silent><F6> :AsyncTask project-run<CR>
nnoremap <silent><F7> :AsyncTask project-build<CR>
nnoremap <silent><F9> :AsyncTask build<CR>


nnoremap <M-F12> :below ter ++close<CR>

" Define nerdtree
map <C-n> :NERDTreeToggle<CR>

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

source $VIM/_vimrc

let g:python3_host_prog = "~/AppData/Local/Programs/Python/Python38-32/python.exe"

syntax enable

set pythonthreedll=python38.dll

set nobackup
set noswapfile
set noundofile

set background=dark
colorscheme solarized

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,gbk,gbk2312,cp936,latin-1 
set fileformat=unix
set fileformats=unix,dos,mac


source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages zh_CN.utf-8

filetype on                                           "启用文件类型侦测
filetype plugin on                                    "针对不同的文件类型加载对应的插件
filetype plugin indent on                             "启用缩进
set smartindent                                       "启用智能对齐方式
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度
set shiftwidth=4                                      "换行时自动缩进4个空格
set softtabstop=4
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格

set autoread

set number

" async taks
let g:asyuncrun_open=6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg', 'Cargo.toml']


"'让vimrc配置变更立即生效'
autocmd BufWritePost $MYVIMRC source $MYVIMRC
