" 基础设置开始
set hlsearch                           " 高亮搜索
set incsearch                          " 在输入要搜索的文字时，实时匹配
set ignorecase                         " 搜索模式里忽略大小写
set smartcase                          " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项
set number                             " 显示行号
set laststatus=2                       " 启用状态栏信息
set cursorline                         " 突出显示当前行
set cmdheight=2                        " 设置命令行的高度为2，默认为1
set nowrap                             " 设置不自动换行
"set shortmess=atI                     " 去掉欢迎界面
set tabstop=2                          "设置Tab键的宽度，可以更改，如：宽度为2
set backspace=2                        " backspace 可用
set smarttab                           " 指定按一次backspace就删除shiftwidth宽度
set shiftwidth=2                       " 换行时自动缩进宽度，可更改（宽度同tabstop）
set expandtab                          " 将Tab键转换为空格
set smartindent                        " 启用智能对齐方式
set writebackup                        " 保存文件前建立备份，保存成功后删除该备份

" 自动补全引号括号
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

" vim-colors-solarized配置
" syntax enable
" set background=dark
" colorscheme solarized

" nerdtree配置
map <F12> :NERDTreeMirror<CR>
map <F12> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" nerdcommenter配置
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" 基础设置结束



" 插件设置开始
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 在此处放入想要试用的插件
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/kien/ctrlp.vim.git'
call vundle#end()
filetype plugin indent on
" 插件设置结束
