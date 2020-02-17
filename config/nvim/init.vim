call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'weirongxu/coc-explorer'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" nvim startscreen --vim-startify
Plug 'mhinz/vim-startify'
Plug 'pedsm/sprint'
" file search --fzf
Plug 'junegunn/fzf'
Plug 'skywind3000/asyncrun.vim'
Plug 'morhetz/gruvbox'
" status bar --airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nvie/vim-flake8'
Plug 'haya14busa/incsearch.vim'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete-clangx'
" markdown语言插件
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'junegunn/vim-easy-align'
" html 插件
Plug 'mattn/emmet-vim'
" syntax check --neomake
Plug 'neomake/neomake'
" autocomplete deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'davidhalter/jedi-vim'
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
let g:deoplete#enable_at_startup=1
let g:airline#extensions#tabline#formatter='default'
" 设置airline主题
let g:airline_theme='deus'
" 显示行号
set number
" 高亮当前行
set cursorline
" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
syntax on
set shiftwidth=4
set tabstop=4
set softtabstop=4
" set cindent			" 设置C自动缩进
set incsearch		" 输入字符串就显示匹配点
set hlsearch
set showmatch		" 显示匹配的括号
set scrolloff=3     " 距离顶部和底部3行"
set encoding=utf-8  " 编码
set fenc=utf-8      " 编码
set mouse=a			" 启用鼠标
set hlsearch        " 搜索高亮
set autoindent      " 设置自动缩进
" 搜索高亮后　前后跳转: 下一个/上一个
" n/N
" 高亮显示复制区域
hi HighlightedyankRegion cterm=reverse gui=reverse
" let g:highlightedyank_highlight_duration = 1000 " 高亮持续时间为 1000 毫秒

" 设置背景颜色和主题
colorscheme gruvbox
set background=dark

" markdown语言插件配置

" jed-vim 配置
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" 普通快捷键
map R :source %<CR>
map Q :q!<CR>
map W :w<CR>
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

" 分屏快捷键
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

" 如果neoformat没有检测到文件类型，执行以下命令
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" 指定pylint为python的代码检查器
let g:neomake_python_enabled_makers = ['pylint']

map <C-r> :call Sprint()<CR>
" func! RunPython()
"     if &filetype == 'python'
"         exec "!time python3.8 %"
"     endif
" endfunc
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
