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



filetype on                                           "�����ļ��������
filetype plugin on                                    "��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on                             "��������
set smartindent                                       "�������ܶ��뷽ʽ
set expandtab                                         "��Tab��ת��Ϊ�ո�
set tabstop=4                                         "����Tab���Ŀ��
set shiftwidth=4                                      "����ʱ�Զ�����4���ո�
set smarttab                                          "ָ����һ��backspace��ɾ��shiftwidth��ȵĿո�

set autoread


set number
