" vim配置

" 设置行号
set number

" 设置颜色主题 colorscheme hybrid
set background=dark
" colorscheme gruvbox

" 语法高亮
syntax on

" 映射
nnoremap <SPACE> <Nop>
let mapleader=" "
" let mapleader=<space>
let g:mapleader=" "

" 使用jj 进入normal模式
inoremap jj <Esc>`^

" 使用leader+w 直接保存
" inoremap <leader>w <Esc>:w<cr>
" noremap <leader>w :w<cr>

" 插件
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" nerdtree 树状管理插件 
Plug 'preservim/nerdtree'
" 在当前窗口快速移动光标 
Plug 'easymotion/vim-easymotion'
" 快速注释代码 gcc 取消注释 gcc
Plug 'tpope/vim-commentary'
" 快速浏览代码 显示函数变量等
Plug 'majutsushi/tagbar'
" javascript语法高亮和缩进
Plug 'pangloss/vim-javascript'
"  emmet-vim 快速编写HTMl和CSS的工具
Plug 'mattn/emmet-vim'
" youcompleteme自动补全插件
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" vim-plug安装gruvbox之后添加下面语句生效
autocmd vimenter * nested colorscheme gruvbox

" NerdTree 映射

" 开启nerdtree
nnoremap <leader>o :NERDTreeToggle<CR>
" 光标移动到当前树状目录的父目录
nnoremap <leader>p :NERDTreeFind<CR>
" 光标从vim文件移动到树状目录
nnoremap <leader>n :NERDTreeFocus<CR>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" 在 nerdtree 中显示隐藏文件
let NERDTreeShowHidden=1

" easymotion映射
" <Leader>f{char} to move to {char}  移动到一个字符
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char} 移动到两个字符
nmap s <Plug>(easymotion-overwin-f2)

" Move to line 移动到某一行
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word 移动到某个单词
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" tarbar 映射
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1   " 自动聚焦 Tagbar 窗口
" deoplete
" let g:deoplete#enable_at_startup = 1
" set completeopt-=preview


"  vim-javascript配置
" 为jsdoc文档启用语法突出显示
let g:javascript_plugin_jsdoc = 1
" 为ngdoc启用额外语法突出显示
let g:javascript_plugin_ngdoc = 1
" 为Flow启用语法突出显示
let g:javascript_plugin_flow = 1

" emmet-vim 配置
" let g:user_emmet_leader_key='<<leader>-y>'
let g:user_emmet_mode='a'              " 设置emmet-vim的默认工作模式为insert模式
let g:user_emmet_html5 = 1
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ycm配置
let g:ycm_clangd_binary_path = "/usr/bin/clang"
"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python解释器路径"
" let g:ycm_path_to_python_interpreter='/usr/bin/python'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

