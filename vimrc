"""""""""""""""""""""""""""""""""""""""""""""""""
"          2018 Lucus的vim配置                  "
""""""""""""""""''"""""""""""""""""""""""""""""""

" 不兼容模式，即不兼容vi。
" 如果兼容vi，则不能很舒服的使用vim新功能
set nocp
set enc=utf-8                 " 编码，set encoding

syntax on                     " 语法高亮
filetype plugin indent on     " 打开文件类型检测，并且根据检测结果设置缩进格式
set nu  					  " 显示行号,即 set nu
set ruler                     " 打开底部的状态栏，显示光标所在的行和列
set hls     				  " 打开搜索高亮, 即set hlsearch
set is						  " 在没有完全输入要搜索的字符串时就开始都锁
set ts=4          			  " 设置tab为4个空格
set sw=4					  " 默认缩进为4个空格
set et 				          " 输入时把tab替换成空格，和下面的命令配合使用
set smarttab 				  " 可以输入一次breakspace删除4个空格
set cul                       " 显示当前行的线
"set cuc                      " 显示当前列的线
set ww=b,h,l                  " 即whichwrap, 当h,l按键时允许在每行的最左或者最右处折行
"set spell                    " 不实用。打开拼写错误，错误单词会变红.光标放在错误单词上，按下z=显示建议,按]s跳到下一错误处
set wildmenu                  " 漂亮的方式补全命令
colo torte                    " 使用torte配色方案

" 上次编辑或者退出的位置
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif

" 显示行尾的多余空格，并高亮提示
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" 成对出现的符号
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap （ （）<ESC>i
inoremap 【 【】<ESC>i

" 没有修改的前提下连续按两次Esc退出文件
nnoremap <buffer> <Esc><Esc> <C-W>q
inoremap <buffer> <Esc><Esc> <Esc><C-W>q

" 状态栏显示格式
set ls=2
set stl=%F%m%r%h%w\ \[%v,%l]\ \[%p%%]\%{strftime(\"\ %Y-%m-%d\ %H:%M\")}

" 自动命令设置Filetype
"autocmd BufRead,BufNewFile *.vue set filetype=xhtml
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" 自动命令设置不同类型的缩进
"autocmd FileType *  set ts=2 | set sw=2 | set et
"autocmd FileType go set ts=4 | set sw=4 | set noet
