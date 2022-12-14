" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"显示行数
set number
"显示相对行数
set relativenumber
"语法检查
syntax on
"底部显示模式
set showmode
"底部显示命令
set showcmd
"允许使用鼠标
set mouse=a
"将tab转换为空格
set expandtab
"tab空格数
set tabstop=4
set softtabstop=4
set shiftwidth=4
"光标所在行高亮
set cursorline
"状态栏显示光标位置
set ruler
"是否显示状态栏
set laststatus=2
"高亮查找的词
set hlsearch
"显示光标对应的一对括号
set showmatch
"自动跳到第一个匹配的搜索
set incsearch
"自动切换到工作目录
set autochdir
"打开文件监视
set autoread
"历史
set history=1000
call plug#begin()
let g:plug_url_format = 'git@github.com:%s.git'
"多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"文件树
Plug 'preservim/nerdtree'
"模糊查找
Plug 'Yggdroot/LeaderF', {'do': './install.sh' }
"自动配对括号
Plug 'jiangmiao/auto-pairs'
"美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
"快速注释
Plug 'preservim/nerdcommenter'
"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"对齐
Plug 'godlygeek/tabular'
"格式化
Plug 'chiel92/vim-autoformat'
"缩进线
Plug 'Yggdroot/indentLine'
"ASCII diagram for vim
Plug 'willchao612/vim-diagon'
"为文本添加引号等
Plug 'tpope/vim-surround'
"显示函数，变量列表
Plug 'liuchengxu/vista.vim'
"在vim也能执行sudo
Plug 'lambdalisue/suda.vim'
call plug#end()
color snazzy
map <C-t> :NERDTreeToggle<CR>
    let g:VM_theme                      = 'ocean'
    let g:VM_highlight_matches          = 'underline'
    let g:VM_maps                       = {}
    "let g:VM_maps['Find Under']         = '<C-n>'
    "let g:VM_maps['Find Subword Under'] = '<C-n>'
    "let g:VM_maps['Select All']         = '<C-d>'
    "let g:VM_maps['Select h']           = '<C-Left>'
    "let g:VM_maps['Select l']           = '<C-Right>'
    let g:VM_maps['Add Cursor Up']      = '<C-k>'
    let g:VM_maps['Add Cursor Down']    = '<C-j>'
    "let g:VM_maps['Add Cursor At Pos']  = '<C-x>'
    "let g:VM_maps['Add Cursor At Word'] = '<C-e>'
    "let g:VM_maps['Remove Region']      = 'q'
