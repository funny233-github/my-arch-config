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
"markdown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'iamcco/mathjax-support-for-mkdp'
"markdown管理工具
Plug 'vimwiki/vimwiki'
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


let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = '127.0.0.1'

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = '/usr/bin/wyeb'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = '8080'

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'dark'
