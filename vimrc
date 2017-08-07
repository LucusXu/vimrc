" 语法高亮
syntax on
" 显示行号
set number
set ruler
" 搜索高亮
set hlsearch

"上次编辑或者退出的位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal g'\"" | endif
endif

"""""""""""""""""""""""""" 编码相关
"tab为4个空格
set ts=4

"""""显示行尾的空格，并高亮提示
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
	"显示行末的$,有了上面的配置就不需要这个了
	"set list
"""""
":1,10 s/^/#/g     // 用#注释第一行到第10行
":1,10 s/^#//g     // 取消注释
":.,10 s/^/#/g     // 注释当前行到下面的30行
