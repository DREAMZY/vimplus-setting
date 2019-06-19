"
" author:   bbdlg
" blog:     http://my.oschina.net/bbdlg
"

set helplang=ch
set nu
syntax enable
syntax on
colorscheme evening

" function of backspace 
se nocompatible
se bs=2


" taglist config
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1

" 按下 CTRL+W 再按 CTRL+T look一下效果
" netrw.vim config
let g:winManagerWindowLayout='TagList|FileExplorer'
"nmap wm :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr> 

" save file 
" 使用ctrl+s保存文件
" note: you must add <stty -ixon> in ${HOME}/.bashrc
nmap <C-S> :update<CR>
vmap <C-S> <C-C>:update<CR>
imap <C-S> <C-O>:update<CR>

" quit
" 使用ctrl+q退出vim
nmap <C-Q> :quit<CR>
vmap <C-Q> <C-C>:quit<CR>
imap <C-S> <C-O>:quit<CR>

" set fold
" za 打开/关闭当前折叠
" zA 循环地打开/关闭当前折叠
" zo 打开当前折叠
" zc 关闭当前折叠
" zM 关闭所有折叠
" zR 打开所有折叠
set foldmethod=syntax
set foldlevel=100

" set tab
set smarttab
set tabstop=3
set softtabstop=3 "设置为3个空格表示一个tab
set shiftwidth=3
set expandtab
   "继承前一行的缩进方式，特别适用于多行注释
set autoindent
   "为C程序提供自动缩进
set smartindent
   "使用C样式的缩进
set cindent
   " 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

   "打开拼写检查
"set spell
   "关闭拼写检查
set nospell
   "自动补全
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
   "taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

   "winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
   "
nnoremap <silent> <F3> :Grep<CR>

   "cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

   " switch between .h and .c
   " F12 可在头文件和源文件切换 
nnoremap <silent> <F12> :A<CR>

   "开启鼠标模式
set mouse=n
  
" let vim remeber your last edit position
" it's so wonderful obviously :)
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" set all keywords high light when search
set hlsearch

" auto completion 设置自动补齐 
filetype plugin indent on 
set completeopt=longest,menu 
if has("autocmd") && exists("+omnifunc") 
     autocmd Filetype * 
   \ if &omnifunc == "" | 
   \   setlocal omnifunc=syntaxcomplete#Complete | 
   \ endif 
endif 
let g:SuperTabDefaultCompletionType="context"
   " 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
   " " 现在改为<C-X><C-L>(其为根据自己定义的结构体自动补齐). 
   " " 关于<C-P>的补全方式, 
   " " 还有其他的补全方式, 你可以看看下面的一些帮助: 
   " " :help ins-completion 
   " " :help compl-omni 
let g:SuperTabRetainCompletionType=2 
   " " 0 - 不记录上次的补全方式 
   " " 1 - 记住上次的补全方式,直到用其他的补全命令改变它 
   " " 2 - 记住上次的补全方式,直到按ESC退出插入模式为止 


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
