call plug#begin('~/.vim/plugged')
" 撤销树Gundo
Plug 'sjl/gundo.vim'
" supertab
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Plug 'weirongxu/coc-explorer'
Plug 'Valloric/YouCompleteMe'
"为了Python3的第三方库安装Jedi插件
Plug 'davidhalter/jedi-vim'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" nvim startscreen --vim-startify
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
" Super searching
Plug 'kien/ctrlp.vim'
" file search --fzf
Plug 'junegunn/fzf'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" Plug 'Jane42070/Runner'
Plug 'morhetz/gruvbox'
" status bar --airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nvie/vim-flake8'
Plug 'haya14busa/incsearch.vim'
Plug 'w0rp/ale'
" Plug 'Shougo/deoplete-clangx'
" Latex插件
Plug 'lervag/vimtex'
" markdown语言插件
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'junegunn/vim-easy-align'
" html 插件
Plug 'mattn/emmet-vim'
" syntax check --neomake
" Plug 'neomake/neomake'
" autocomplete deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
" 代码片段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'davidhalter/jedi-vim'
" 代码折叠
Plug 'tmhedberg/SimpylFold'
" code format --neoformat
" Plug 'sbdchd/neoformat'
call plug#end()


"""""""""""""""""""""""""""""""""""""
"	      CUSTOM MY NVIM	     	"
"""""""""""""""""""""""""""""""""""""
" airline config
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:ale#enable_at_startup=1
let g:airline#extensions#tabline#formatter='default'
" 设置airline主题
let g:airline_theme='deus'
" 显示行号
set number
" 高亮当前行
set cursorline
" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
syntax on	" 语法高亮
filetype plugin indent on " 根据文件类型自动处理缩进
filetype on
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set autochdir
" 取消注释自动换行
set paste
" 设置持久性撤销和重复
set undofile
" if !isdirectory("~/.nvim/undodir")
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
" 搜索高亮后　前后跳转: 下一个/上一个
" n/N
" 高亮显示复制区域
hi HighlightedyankRegion cterm=reverse gui=reverse
" let g:highlightedyank_highlight_duration = 1000 " 高亮持续时间为 1000 毫秒


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
let s:error_symbol = get(g:, 'airline#extensions#ale#error_symbol', '✗')
let s:warning_symbol = get(g:, 'airline#extensions#ale#warning_symbol', '⚡')
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
" 新建标签页
map T  :tabe<CR>
" 前一标签页
map t- :-tabnext<CR>
" 后一标签页
map t= :+tabnext<CR>
" 浏览标签页
map tu :tabe<CR>
map ti :+tabnext<CR>
map tn :-tabnext<CR>

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

noremap <leader>] :YcmCompleter GoTo<cr>

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
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_key_invoke_completion = '<c-z>'
noremap <c-z> <NOP>
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
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
" Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
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
map <C-r> :call Runner()<CR>

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
            \ '~/Neo-vim/使用手册.md',
            \ '~/.config/nvim/init.vim',
            \]

" 起始页显示的列表长度
let g:startify_files_number = 20
