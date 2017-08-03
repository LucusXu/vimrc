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
" 显示行后的$，方便检查行末的空格
set list
