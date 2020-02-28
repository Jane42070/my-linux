call plug#begin('~/.vim/plugged')
" 撤销树Gundo
Plug 'sjl/gundo.vim'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'
" supertab
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Plug 'weirongxu/coc-explorer'
Plug 'Valloric/YouCompleteMe'
"为了Python3的第三方库安装Jedi插件
Plug 'davidhalter/jedi-vim'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" vim dict
Plug 'iamcco/dict.vim'
" Calendar
Plug 'itchyny/calendar.vim'
" nvim startscreen --vim-startify
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
" Super searching
Plug 'kien/ctrlp.vim'
" file search --fzf
Plug 'junegunn/fzf'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" vim-ranger
Plug 'rbgrouleff/bclose.vim'	" neovim dependency
Plug 'francoiscabrol/ranger.vim'
" Plug 'Jane42070/Runner'
Plug 'morhetz/gruvbox'
" status bar --airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nvie/vim-flake8'
Plug 'haya14busa/incsearch.vim'
Plug 'w0rp/ale'
" Latex插件
Plug 'lervag/vimtex'
" Python 
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" markdown语言插件
Plug 'godlygeek/tabular'
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'junegunn/vim-easy-align'
" html 插件
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
" 代码片段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" 代码折叠
Plug 'tmhedberg/SimpylFold'
call plug#end()


"""""""""""""""""""""""""""""""""""""
"	      CUSTOM MY NVIM	     	"
"""""""""""""""""""""""""""""""""""""
" airline config
" 设置airline主题
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:ale#enable_at_startup=1
let g:airline#extensions#tabline#formatter='default'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = ''
" 显示行号
set number
" 高亮当前行
set cursorline
" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
syntax on	" 语法高亮
filetype plugin indent on " 根据文件类型自动处理缩进
" 共享剪切板
"set clipboard+=unnamed
filetype on
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set autochdir
" 取消注释自动换行
" set paste
" 设置持久性撤销和重复
set undofile
" set spell " 学英语
"if !isdirectory("~/.nvim/undodir")
" 	call mkdir("~/.nvim/undodir", "p")
" endif
" set undodir="~/.nvim/undodir"

set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=2		" 修正多数终端上backspqce行为
set cindent			" 设置C自动缩进
set incsearch		" 输入字符串就显示匹配点
set hlsearch
set showmatch		" 显示匹配的括号
set scrolloff=3     " 距离顶部和底部3行"
set encoding=utf-8  " 编码
set fenc=utf-8      " 编码
set mouse=a			" 启用鼠标
set hlsearch        " 搜索高亮
set autoindent		" 设置自动缩进
set wrap			" 设置折叠

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" 搜索高亮后　前后跳转: 下一个/上一个
" n/N
" 高亮显示复制区域
hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 1000 " 高亮持续时间为 1000 毫秒


" SimpylFold
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview = 1


" 设置背景颜色和主题
colorscheme gruvbox
set background=dark

" markdown语言插件配置
let g:vim_markdown_math = 1
" " jed-vim 配置
" " disable autocompletion, cause we use deoplete for completion
" let g:jedi#completions_enabled = 0
" 
" " open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"

""""""""""""""""""""""""""""""""""
"    _    _     _____
"   / \  | |   | ____|
"  / _ \ | |   |  _|
" / ___ \| |___| |___
"/_/   \_\_____|_____|
" 始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_statusline_format = ['✗ %d', '⚡%d', '✔ OK']
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" 始终开启标志列
" let s:error_symbol = get(g:, 'airline#extensions#ale#error_symbol', 'E:')
" let s:warning_symbol = get(g:, 'airline#extensions#ale#warning_symbol', 'W:')
let airline#extensions#ale#error_symbol = '✗:'
let airline#extensions#ale#warning_symbol = '⚡:'
" 文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 1
" 打开文件时进行检查
let g:ale_lint_on_enter = 1

" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}
" 对于java在中文系统上乱码
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

"""""""""""""""""""""""""""""""""
" 快捷键
" map <C-r> :source %<CR>
" map <C-q> :q!<CR>
" map <C-w> :w<CR>
" map <F3> :NERDTree<CR>
map <F3> :CocCommand explorer --width 30<CR>
map F  :FZF<CR>
map PL :PlugInstall<CR>
map PS :PlugStatus<CR>
map PD :PlugUpdate<CR>
map PG :PlugUpgrade<CR>
map ,r :source %<CR>
" 新建标签页
map <C-t>  :tabe<CR>
" 前一标签页
map t- :-tabnext<CR>
" 后一标签页
map t= :+tabnext<CR>
" 浏览标签页
" map tu :tabe<CR>
map ti :+tabnext<CR>
map tn :-tabnext<CR>
map tc :tabclose<CR>
" 快捷缩进
vnoremap < <v
vnoremap > >v

" 使用s + hjkl 在nvim中快速分屏
map	sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 使用<Ctrl> + hjkl 在窗口间快速切换
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

"noremap <leader>] :YcmCompleter GoTo<cr>

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息

""""""""""""""""""""""""""""""""""
"__   __           ____                      _      _       __  __
"\ \ / /__  _   _ / ___|___  _ __ ___  _ __ | | ___| |_ ___|  \/  | ___
" \ V / _ \| | | | |   / _ \| '_ ` _ \| '_ \| |/ _ \ __/ _ \ |\/| |/ _ \
"  | | (_) | |_| | |__| (_) | | | | | | |_) | |  __/ ||  __/ |  | |  __/
"  |_|\___/ \__,_|\____\___/|_| |_| |_| .__/|_|\___|\__\___|_|  |_|\___|
"                                     |_|
set completeopt=menuone,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
let g:ycm_add_preview_to_completeopt = 0
" mac pyhton path
let g:ycm_python_binary_path = '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8'
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_key_invoke_completion = '<c-z>'
noremap <c-z> <NOP>
let g:ycm_seed_identifiers_with_syntax = 1  "开启使用语言的一些关键字查询"
let g:ycm_confirm_extra_conf = 1
let g:ycm_autoclose_preview_window_after_completion=1 "补全后自动关闭预览窗口"
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" code jump
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"===============================Jedi==================================
" if has('python3')
" let g:loaded_youcompleteme = 1 " 判断如果是python3的话，就禁用ycmd。
" let g:jedi#force_py_version = 3
" let g:SuperTabDefaultCompletionType = "context"
" let g:jedi#popup_on_dot = 0
" let g:pymode_python = 'python3'
" endif
"===============================Jedi===================================

"""""""""""""""""""""""""""""""""""""
" vim-calendar
"let g:calendar_google_calendar = 1
"let g:calendar_google_task = 1
" Google-api
map tl :Calendar -view=clock<CR>
map tt :Calendar<CR>
" source ~/.cache/calendar.vim/credentials.vim
""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""
" latex-preview
"let g:livepreview_previewer = 'zathura'
"let g:livepreview_engine = 'xelatex'
autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'evince'
nmap <F12> :LLPStartPreview<cr>
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-xelatex',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:tex_conceal='abdmg'
let g:livepreview_previewer = 'open -a texshop'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-table-mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
" To get ReST-compatible tables use
"let g:table_mode_corner_corner='+'
" For Markdown-compatible tables use
let g:table_mode_corner='|'
"let g:table_mode_header_fillchar='='


"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" python-mode
let g:pymode_rope_rename_bind = '<C-c>rr'
" 项目修改后重新生成缓存
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_rope_completion = 1
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
" "发现错误时不自动打开QuickFix窗口
let g:pymode_lint_cwindow = 0
" 高亮缩进错误
let g:pymode_options_max_line_length = 79
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"不在父目录下查找.ropeproject，能提升响应速度
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 1
let g:pymode_run = 0
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"侧边栏不显示python-mode相关的标志
let g:pymode_lint_signs = 0

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" markdown-preview
let g:mkdp_path_to_chrome = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1

"""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Latex
set shellslash
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-dict

"""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""
" NeoFormat
" " 如果neoformat没有检测到文件类型，执行以下命令
" " Enable alignment
" let g:neoformat_basic_format_align = 1
" 
" " Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1
" 
" " Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1
" 
" " 指定pylint为python的代码检查器
" " let g:neomake_python_enabled_makers = ['pylint']

""""""""""""""""""""""""""""""""""""""""""""""""""
"     _
"    / \   ___ _   _ _ __   ___ _ __ _   _ _ __
"   / _ \ / __| | | | '_ \ / __| '__| | | | '_ \
"  / ___ \\__ \ |_| | | | | (__| |  | |_| | | | |
" /_/   \_\___/\__, |_| |_|\___|_|   \__,_|_| |_|
"              |___/
"   设置运行可执行文件
let g:asyncrun_open = 8
let $PYTHONNUNBUFFERED=1
function! Runner()
    w
    if exists("g:RunnerRun")
        if g:RunnerRun
            AsyncStop!
        endif
    endif
    if (&ft=='c')
        AsyncRun gcc % ; ./a.out
    endif
    if (&ft=='cpp')
        AsyncRun g++ %; ./a.out
    endif
    if (&ft=='python')
        AsyncRun -raw python3.8 %
    endif
    if (&ft=='php')
        AsyncRun php %
    endif
    if (&ft=='javascript')
        AsyncRun node %
    endif
    if (&ft=='java')
        AsyncRun javac Main.java; java Main;
    endif
    " if (&ft=='coffee')
    "     AsyncRun coffee %
    " endif
    if (&ft=='rust')
        AsyncRun rustc %; ./%< ;
    endif
    if (&ft=='haskell' || &ft=='lhaskell')
        AsyncRun ghc %; ./%< ;
    endif
    if (&ft=='tex')
        AsyncRun pdflatex %;
    endif
    if (&ft=='markdown')
        if(expand("%:t") == "README.md")
            AsyncRun pandoc -s -S -c ~/.vim/bundle/sprint/assets/github.css -o %<.html %;
        else
            AsyncRun pandoc -s -S -o %<.pdf %;
        endif
    endif
    if exists("g:RunnerHidden")
        if g:RunnerHidden == 0
            copen
        endif
    else
        copen
    endif
endfunction
map <leader>R :call Runner()<CR>

" 自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.c,*h,*.sh,*.py exec ":call SetHeader()" 
func! SetHeader() 
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "")
    elseif expand("%:e") == 'tex'
        call setline(1, "%! Tex program = xelatex")
		call setline(2, "%-- coding: UTF-8 --")
        call append(line(".")+1, "") 
    elseif expand("%:e") == 'py'
        call setline(1, "#!/usr/bin/env python3.8")
		call setline(2, "# -*- coding: utf-8 -*-")
        call append(line(".")+1, "") 
    elseif expand("%:e") == 'cpp' 
        call setline(1,"#include <iostream>") 
        call setline(2, "")
        call setline(3, "using std::cin;") 
        call setline(4, "using std::cout;") 
        call setline(5, "using std::endl;") 
        call setline(6, "")
    elseif expand("%:e") == 'cc' 
        call setline(1,"#include <iostream>") 
        call setline(2, "")
        call setline(3, "using std::cin;") 
        call setline(4, "using std::cout;") 
        call setline(5, "using std::endl;") 
        call setline(6, "")
    elseif expand("%:e") == 'c'
        call setline(1,"#include <stdio.h>") 
        call setline(2,"#include <stdlib.h>")
        call setline(3,"")
    elseif expand("%:e") == 'h'
        call setline(1, "#ifndef ".toupper(expand("%:r"))."_H")
        call setline(2, "#define ".toupper(expand("%:r"))."_H")
        call setline(3,"")
        call setline(4, "#endif")
    endif
endfunc
autocmd BufNewFile * normal G

" 打开一个文件自动定位到上一次退出时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____  _                        _
" / ___|(_)_ __  _ __  _ __   ___| |_ ___
" \___ \| | '_ \| '_ \| '_ \ / _ \ __/ __|
"  ___) | | | | | | | | |_) |  __/ |_\__ \
" |____/|_|_| |_|_| |_| .__/ \___|\__|___/
"                     |_|
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
""""""""""""""""""""""""""""""""""""""""""""""""""

" nerdtree配置
" 1.打开neovim时自动打开目录
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 设置NERDTree 窗口位置，窗口大小
let NERDTreeWinPos=1
let NERDTreeWinSize=28
" vim-Startify设置
" 设置书签
let g:startify_bookmarks            = [
            \ '~/.config/nvim/init.vim',
            \]

" 起始页显示的列表长度
let g:startify_files_number = 20
