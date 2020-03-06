call plug#begin('~/.vim/plugged')
" 撤销树Gundo
Plug 'sjl/gundo.vim'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'
"" supertab
"Plug 'ervandew/supertab'
" Omnisharp
Plug 'omnisharp/omnisharp-vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Valloric/YouCompleteMe'
"为了Python3的第三方库安装Jedi插件
"Plug 'davidhalter/jedi-vim'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" 中文标准化排版
Plug 'hotoo/pangu.vim'
"输入法切换
"Plug 'CodeFalling/fcitx-vim-osx'
" vim dict
Plug 'iamcco/dict.vim'
" Calendar
Plug 'itchyny/calendar.vim'
" xtabline
Plug 'mg979/vim-xtabline'
" nvim startscreen --vim-startify
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
" Super searching
Plug 'ctrlpvim/ctrlp.vim'
" vim git
"Plug 'tpope/vim-fugitive'
" file search --fzf
"Plug 'junegunn/fzf'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" vim-ranger
"Plug 'rbgrouleff/bclose.vim'	" neovim dependency
"Plug 'francoiscabrol/ranger.vim'
" Plug 'Jane42070/Runner'
Plug 'morhetz/gruvbox'
" lightline
Plug 'itchyny/lightline.vim'
"" status bar --airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
" Plug 'nvie/vim-flake8'
Plug 'haya14busa/incsearch.vim'
"Plug 'w0rp/ale'
" Debugger support: pyhton, java, bash-script, c, c++(maybe)
"Plug 'puremourning/vimspector'
Plug 'joonty/vdebug'
" Latex插件
Plug 'lervag/vimtex'
" Python
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" markdown语言插件
"Plug 'godlygeek/tabular'
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'junegunn/vim-easy-align'
" vim-colorscheme
"Plug 'flazz/vim-colorschemes'
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
" 开启中文规范
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
"""modeconfig"""
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" xtabline
let g:xtabline_lazy=1

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" tagbar
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
nmap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_width=35
let g:tagbar_autofocus = 1
" Auto open tagbar when opening a supported file/files
"autocmd FileType * nested :call tagbar#autoopen(0)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" omnisharp
let g:OmniSharp_server_stdio = 1

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-git
nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Set invoked default directory to working direcotry
let g:ctrlp_working_path_mode = 'ra'
" Exclude files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Use a custom file listing command
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"""""""""""""""""""""""""""""""""""""

"" airline config
"" 设置airline主题
"nmap <s-tab> :bn<cr>  "设置tab键映射
"" 设置tabline时间显示
"" 只显示文件名
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16'
""let g:airline#extensions#coc#enabled = 1
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#left_sep=''
"let g:airline#extensions#tabline#left_alt_sep=''
""let airline#extensions#coc#error_symbol = '✗'
""let airline#extensions#coc#warning_symbol = '⚡'
""let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
""let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
"let g:airline#extensions#tabline#buffer_idx_mode = 1
"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
"nmap <leader>- <Plug>AirlineSelectPrevTab
"nmap <leader>+ <Plug>AirlineSelectNextTab
""① ⓪ ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩
"let g:airline#extensions#tabline#buffer_idx_format = {
	"\ '0': '⓪ ',
	"\ '1': '① ',
	"\ '2': '② ',
	"\ '3': '③ ',
	"\ '4': '④ ',
	"\ '5': '⑤ ',
	"\ '6': '⑥ ',
	"\ '7': '⑦ ',
	"\ '8': '⑧ ',
	"\ '9': '⑨ '
	"\}
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
"let g:ale#enable_at_startup=1
"let g:airline#extensions#tabline#formatter='default'
"" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
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
set autochdir
" 取消注释自动换行
" set paste
" 设置持久性撤销和重复
set undofile

set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=2		" 修正多数终端上backspace 行为
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
let g:highlightedyank_highlight_duration = 500


" SimplyFold
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview = 1

" 设置背景颜色和主题
let g:gruvbox_italicize_comments=1
let g:gruvbox_italicize_strings=0
let g:gruvbox_improved_strings=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_improved_warnings=1
let g:gruvbox_termcolors=256

"let g:gruvbox_invert_signs=1
" For MacVim
"set macligatures
"set guifont=Fira\ Code:h17 "设置字体和大小
colorscheme gruvbox
set termguicolors
"let base16colorspace=256
"colorscheme base16-default-dark
set background=dark

" markdown语言插件配置
let g:vim_markdown_math = 1
let g:markdown_fenced_languages = ['css', 'js=javascript']
" coc-spell-checker
"<leader>aap for current paragraph
"<leader>aw for current word
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
"""""""""""""""""""""""""""""""""""
""    _    _     _____
""   / \  | |   | ____|
""  / _ \ | |   |  _|
"" / ___ \| |___| |___
""/_/   \_\_____|_____|
"" 始终开启标志列
"let g:ale_sign_column_always = 1
"let g:ale_set_highlights = 0
"let g:ale_statusline_format = ['✗ %d', '⚡%d', '✔ OK']
"" let g:ale_echo_msg_error_str = 'E'
"" let g:ale_echo_msg_warning_str = 'W'
"" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
""自定义error和warning图标
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
""" 始终开启标志列
""" let s:error_symbol = get(g:, 'airline#extensions#ale#error_symbol', 'E:')
""" let s:warning_symbol = get(g:, 'airline#extensions#ale#warning_symbol', 'W:')
""let airline#extensions#ale#error_symbol = '✗:'
""let airline#extensions#ale#warning_symbol = '⚡:'
""" 文件内容发生变化时不进行检查
"let g:ale_lint_on_text_changed = 1
""" 打开文件时进行检查
"let g:ale_lint_on_enter = 1

""" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
"let g:ale_linters = {
"\   'python': ['pylint'],
"\}
"" 对于java在中文系统上乱码
"let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

"""""""""""""""""""""""""""""""""
" 快捷键
map <F3> :CocCommand explorer<CR>
map C	:CocCommand<CR>
"map ,f  :FZF<CR>
map ,pl :PlugInstall<CR>
map ,ps :PlugStatus<CR>
map ,pd :PlugUpdate<CR>
map ,pg :PlugUpgrade<CR>
map ,pc :PlugClean<CR>
map ,ps :PlugStatus<CR>
map ,r :source %<CR>
" 新建标签页
map tt :tabe<CR>
"" 前一标签页
"map t- :-tabnext<CR>
"" 后一标签页
"map t= :+tabnext<CR>
"" 浏览标签页
map <TAB><TAB> :tabnext<CR>
"map tu :tabe<CR>
"map ti :+tabnext<CR>
"map tn :-tabnext<CR>
map tc :tabclose<CR>
" 快捷缩进
vnoremap < <v
vnoremap > >v

" 映射 jk 为<ESC>
inoremap jk <ESC>
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

"""""""""""""""""""""""""""""""""""""
" COC.NVIM
let g:coc_global_extensions = ['coc-python', 'coc-pyright', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-git', 'coc-explorer', 'coc-translator', 'coc-flutter']
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter']
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=200

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
	call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
	call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}%{StatusDiagnostic()}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-calendar
"let g:calendar_google_calendar = 1
"let g:calendar_google_task = 1
" Google-api
map TL :Calendar -view=clock<CR>
map TT :Calendar<CR>
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

""""""""""""""""""""""""""""""""""""""""""""""""""
"     _
"    / \   ___ _   _ _ __   ___ _ __ _   _ _ __
"   / _ \ / __| | | | '_ \ / __| '__| | | | '_ \
"  / ___ \\__ \ |_| | | | | (__| |  | |_| | | | |
" /_/   \_\___/\__, |_| |_|\___|_|   \__,_|_| |_|
"              |___/
"   设置运行可执行文件
let g:asyncrun_open = 6
let $PYTHONNUNBUFFERED=1
map <leader>R :call CompileRun()<CR>
    func! CompileRun()
        exec "w"
if &filetype == 'c'
            exec "AsyncRun -focus=0 gcc % -o %<; ./%<"
elseif &filetype == 'cpp'
            exec "AsyncRun -focus=0 g++ % -o %<; ./%<"
elseif &filetype == 'java'
            exec "AsyncRun -focus=0 javac %; java %<"
elseif &filetype == 'sh'
            exec "AsyncRun -focus=0 bash %"
elseif &filetype == 'python'
            exec "AsyncRun -focus=0 -raw python3.8 %"
elseif &filetype == 'html'
            exec "!open % &"
elseif &filetype == 'go'
			exec "AsyncRun -focus=0 go build %<; go run %"
elseif &filetype == 'markdown'
            "exec "!~/.vim/markdown.pl % > %.html &"
            "exec "!firefox %.html &"
			exec "MarkdownPreview"	
elseif &filetype == 'tex'
			exec "LLPStartPreview"
endif
    endfunc

"自动插入文件头
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
        call setline(1, "#!/usr/local/bin/python3.8")
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

""""""""""""""""""""""""""""""""""""""
"" lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = {
  \ 'component': {
  \   'lineinfo': '%3l:%-2v%<',
  \ },
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [
  \     ['paste', 'mode'],
  \     ['blame', 'readonly', 'filename'],
  \		['ctrlpmark'],
  \   ],
  \   'right':[
  \     ['fileformat', 'lineinfo', 'percent'],
  \		['diagnostic', 'cocstatus'],
  \		['filetype']
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \	  'readonly': 'LightlineReadonly',
  \	  'mode': 'LightlineMode',
  \   'filename': 'LightlineFilename',
  \	  'cocstatus':'coc#status',
  \   'filetype': 'LightlineFiletype',
  \   'fileformat': 'LightlineFileformat',
  \ }
\ }
"function! LinterStatus() abort
    "let l:counts = ale#statusline#Count(bufnr(''))

    "let l:all_errors = l:counts.error + l:counts.style_error
    "let l:all_non_errors = l:counts.total - l:all_errors

    "return l:counts.total == 0 ? 'OK' : printf(
    "\   '⚡:%d ✗:%d',
    "\   all_non_errors,
    "\   all_errors
    "\)
"endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! LightlineMode()
  return expand('%:t') =~# '^__Tagbar__' ? 'Tagbar':
        \ expand('%:t') ==# 'ControlP' ? 'CtrlP' :
        \ &filetype ==# 'unite' ? 'Unite' :
        \ &filetype ==# 'coc-explorer' ? 'explorer' :
        \ &filetype ==# 'vimshell' ? 'VimShell' :
        \ &filetype ==# 'qf' ? 'QuickFix' :
        \ lightline#mode()
endfunction
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:explorer_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
"""""""""""""""""""""""""""""""""""""
