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
set number
set relativenumber
syntax on
set showmode
set showcmd
set mouse=a
set cursorline
set ruler
set laststatus=2
set hlsearch
set showmatch
set incsearch
set autochdir
set autoread
set history=1000
set expandtab
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
"快速注释
Plug 'preservim/nerdcommenter'
"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"小地图
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
"找错
"Plug 'w0rp/ale'
"对齐
Plug 'godlygeek/tabular'
"格式化
Plug 'chiel92/vim-autoformat'
"作用域
"Plug 'yaocccc/nvim-hlchunk'
"缩进线
Plug 'Yggdroot/indentLine'
"ASCII diagram for vim
Plug 'willchao612/vim-diagon'
call plug#end()
map <C-t> :NERDTreeToggle<CR>
map <C-m> :Minimap<CR>
    let g:VM_theme                      = 'ocean'
    let g:VM_highlight_matches          = 'underline'
    let g:VM_maps                       = {}
    let g:VM_maps['Find Under']         = '<C-n>'
    let g:VM_maps['Find Subword Under'] = '<C-n>'
    let g:VM_maps['Select All']         = '<C-d>'
    let g:VM_maps['Select h']           = '<C-Left>'
    let g:VM_maps['Select l']           = '<C-Right>'
    let g:VM_maps['Add Cursor Up']      = '<C-Up>'
    let g:VM_maps['Add Cursor Down']    = '<C-Down>'
    let g:VM_maps['Add Cursor At Pos']  = '<C-x>'
    let g:VM_maps['Add Cursor At Word'] = '<C-e>'
    let g:VM_maps['Remove Region']      = 'q'
"hlchunk配置
    " 支持哪些文件 默认为 '*.ts,*.js,*.json,*.go,*.c'
      let g:hlchunk_files = '*.ts,*.js,*.json,*.go,*.c,*.java,*.cpp,*.md'
    " 缩进线的高亮
      au VimEnter * hi HLIndentLine ctermfg=244
    " 延时 默认为50
      let g:hlchunk_time_delay = 50
    " 高亮线符号(逆时针) 默认为 ['─', '─', '╭', '│', '╰', '─', '>']
      let g:hlchunk_chars=['─', '─', '╭', '│', '╰', '─', '>']
    " 最大支持行数 默认3000(超过5000行的文件不使用hlchunk)
      let g:hlchunk_line_limit = 5000
    " 最大支持列数 默认100(超过500列的文件不使用hlchunk)
      let g:hlchunk_col_limit = 500
