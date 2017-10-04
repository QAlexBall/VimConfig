"associated .vimrc.bundles
if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

"config NERDTree
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
autocmd VimEnter * NERDTree
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
nmap <F5> :NERDTreeToggle<cr>
let NERDTreeWinSize=24

"colorscheme
set background=dark 
"colorscheme solarized
colorscheme molokai


"YouCompleteMe
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致
" YCM 补全菜单配色
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" 开启 YCM 标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
nnoremap <leader>lo :lopen<CR>	"open locationlist"
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F4> :YcmDiags<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
"设置全局配置文件的路径  
"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax = 1  
""在接受补全后不分裂出一个窗口显示接受的项  
set completeopt-=preview  
"不显示开启vim时检查ycm_extra_conf文件的信息  
"let g:ycm_confirm_extra_conf=0  
""每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  
"在注释中也可以补全  
let g:ycm_complete_in_comments=1  
""输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
"let g:ycm_use_ultisnips_completer=0  
"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1 



"PowerLine
let g:Powerline_colorscheme='solarized256'
"let g:PowerLine_symbols='fancy'


" 高亮显示
set cursorline
"set cursorcolumn
set ruler
set hlsearch
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
" set expandtab
" 设置编辑时制表符占用空格数
" set tabstop=4
" 设置格式化时制表符占用空格数
" set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
" set softtabstop=4

" CTags
autocmd VimEnter * Tagbar 
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nmap <F8> :TagbarToggle<CR>
" 设置标签子窗口的宽度 
let tagbar_width=24
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\ 11.5
