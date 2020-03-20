call plug#begin('~/.vim/plugged')
" 撤销树 Gundo
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
"" supertab
"Plug 'ervandew/supertab'
" Omnisharp
"Plug 'omnisharp/omnisharp-vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"为了 Python3 的第三方库安装 Jedi 插件
"Plug 'davidhalter/jedi-vim'
" rgb 颜色显示
Plug 'chrisbra/colorizer'
" 括号补全
Plug 'jiangmiao/auto-pairs'
" 包围
Plug 'anyakichi/vim-surround'
" 中文标准化排版
Plug 'hotoo/pangu.vim'
"CSV
Plug 'chrisbra/csv.vim', {'for': 'csv'}
" Vim-move
Plug 'matze/vim-move'
"Plug 'mechatroner/rainbow_csv'
"输入法切换
"Plug 'CodeFalling/fcitx-vim-osx'
" Calendar
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}
" xtabline
"Plug 'mg979/vim-xtabline'
" nvim startscreen --vim-startify
" vim-colorscheme
"Plug 'flazz/vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'liuchengxu/vista.vim', {'on': 'Vista'}
" Super searching
Plug 'ctrlpvim/ctrlp.vim'
" vim git
"Plug 'itchyny/vim-gitbranch'
"Plug 'tpope/vim-fugitive'
" Easy motion
Plug 'easymotion/vim-easymotion'
" Cursor Word
Plug 'itchyny/vim-cursorword'
" Interesting words
Plug 'lfv89/vim-interestingwords'
" file search --fzf
Plug 'junegunn/fzf', {'on': 'FZF', 'do': { -> fzf#install() }}
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" vim-ranger
Plug 'rbgrouleff/bclose.vim'	" neovim dependency
Plug 'francoiscabrol/ranger.vim', {'on': 'Ranger'}
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
" lightline
Plug 'itchyny/lightline.vim'
" devicons make lightline more graphical
Plug 'ryanoasis/vim-devicons'
" lightline-bufferline
Plug 'mengelbrecht/lightline-bufferline'
" lightline theme
" Plug 'nvie/vim-flake8'
"Plug 'haya14busa/incsearch.vim'
" Debugger support: pyhton, java, bash-script, c, c++(maybe)
"Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}
"Plug 'joonty/vdebug'
" Latex 插件
Plug 'lervag/vimtex', {'for': 'tex'}
" Python
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Golang
Plug 'fatih/vim-go', {'for': 'go', 'do': ':GoUpdateBinaries' }
" markdown 语言插件
"Plug 'godlygeek/tabular'
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeEnable', 'for': 'markdown'}
Plug 'iamcco/mathjax-support-for-mkdp', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'on': 'MarkdownPreview', 'for':'markdown', 'do': { -> mkdp#util#install() } }
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
" html 插件
Plug 'mattn/emmet-vim', {'for': 'html'}
" 注释
Plug 'scrooloose/nerdcommenter'
" 代码片段
"Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" 代码折叠
Plug 'tmhedberg/SimpylFold'
call plug#end()

"""""""""""""""""""""""""""""""""""""
"	      CUSTOM MY NVIM	     	"
"""""""""""""""""""""""""""""""""""""
" 显示行号
set number
" 显示相对行号
"set relativenumber
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
set backspace=2		" 修正多数终端上 backspace 行为
set cindent			" 设置 C 自动缩进
set incsearch		" 输入字符串就显示匹配点
set hlsearch
set showmatch		" 显示匹配的括号
set scrolloff=3     " 距离顶部和底部 3 行"
set encoding=utf-8  " 编码
set fenc=utf-8      " 编码
set mouse=a			" 启用鼠标
set hlsearch        " 搜索高亮
set autoindent		" 设置自动缩进
set wrap			" 设置折叠
set tags=./.tags;,.tags

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" 对于中文括号跳出的支持
inoremap （ （）<LEFT>
inoremap 【 【】<LEFT>
inoremap 《 《》<LEFT>
inoremap “ “”<LEFT>
inoremap ‘ ‘’<LEFT>

imap ） <ESC>f）a
imap 】 <ESC>f】a
imap 》 <ESC>f》a
" 这两个触发会产生问题
imap ”  <ESC>f” a
imap ’  <ESC>f’ a

imap <c-l> <RIGHT>
"imap <c-h> <left>


" 搜索高亮后　前后跳转：下一个 / 上一个
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
"let g:gruvbox_improved_strings=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_improved_warnings=1
let g:gruvbox_termcolors=256
"let g:onedark_terminal_italics=1

"let g:gruvbox_invert_signs=1
" For MacVim
"set macligatures
"set guifont=Fira\ Code:h17 "设置字体和大小
set termguicolors

colorscheme gruvbox
"colorscheme onedark
"let base16colorspace=256
"colorscheme base16-default-dark
set background=dark
" 开启中文规范
autocmd BufWritePre *.text,*.txt,*.wiki,*.cnx,*.py call PanGuSpacing()
"""modeconfig"""
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
" polyglot
let g:python_highlight_all = 1

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-calc
" append result on current expression
nmap <Leader>ca <Plug>(coc-calc-result-append)
" replace result on current expression
nmap <Leader>cr <Plug>(coc-calc-result-replace)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-move
let g:move_key_modifier = 'S'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" incsearch.vim
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" ranger
let g:ranger_map_keys = 0
map <leader>f :Ranger<cr>
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" fzf.vim
nmap <s-f> :FZF<cr>
let g:fzf_layout = { 'down': '~30%' }
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Colorizer
let g:colorizer_auto_color = 1
let g:colorizer_syntax = 1
"let g:colorizer_auto_filetype='css, html, vim'
let g:colorizer_auto_map = 1
"let g:colorizer_use_virtual_text = 1
"let g:colorizer_skip_comments = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-snippets
"inoremap <silent><expr> <TAB>
	  "\ pumvisible() ? coc#_select_confirm() :
	  "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  "\ <SID>check_back_space() ? "\<TAB>" :
	  "\ coc#refresh()

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"let g:coc_snippet_next = '<tab>'
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-translator
" popup
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
nmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
nmap <Leader>r <Plug>(coc-translator-rv)

"""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""
" CSV.VIM
filetype plugin on
if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1
let g:csv_delim_test = ',;|'
let g:csv_hiHeader = 'Pmenu'
"hi CSVColumnEven term=bold ctermbg=4 guibg=DarkBlue
"hi CSVColumnOdd  term=bold ctermbg=5 guibg=DarkMagenta
let g:csv_nl = 1
let g:csv_nomap_cr = 1
let b:csv_fixed_width="1,5,9,13,17,21"
let g:csv_highlight_column = 'y'
augroup filetypedetect
  au! BufRead,BufNewFile *.csv,*.dat    setfiletype csv
augroup END

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" vista.vim
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
noremap <silent> ,v :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" coc-bookmarks
nmap mj <Plug>(coc-bookmark-next)
nmap mk <Plug>(coc-bookmark-prev)
nmap mm <Plug>(coc-bookmark-toggle)
nmap ma <Plug>(coc-bookmark-annotate)
""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" Interesting words
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>

let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
"let g:interestingWordsRandomiseColors = 1
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""
" omnisharp
"let g:OmniSharp_server_stdio = 1

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


" markdown 语言插件配置
let g:vim_markdown_math = 1
let g:markdown_fenced_languages = ['css', 'js=javascript']
" coc-spell-checker
"<leader>aap for current paragraph
"<leader>aw for current word
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
"""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
" 快捷键
map <F3> :CocCommand explorer<CR>
nnoremap <F5> :GundoToggle<CR>
map C	:CocCommand<CR>
"map ,f  :FZF<CR>
map ,pl :PlugInstall<CR>
map ,ps :PlugStatus<CR>
map ,pd :PlugUpdate<CR>
map ,pg :PlugUpgrade<CR>
map ,pc :PlugClean<CR>
map ,ps :PlugStatus<CR>
"map ,r :source %<CR>
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
inoremap wjk <ESC>:w<CR>
inoremap wqjk <ESC>:wq<CR>

" 使用 s + hjkl 在 nvim 中快速分屏
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" 使用<Ctrl> + hjkl 在窗口间快速切换
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" COC.NVIM
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-git', 'coc-explorer', 'coc-translator', 'coc-flutter']
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

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
nnoremap <silent> ,k :call <SID>show_documentation()<CR>

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
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
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
let g:livepreview_engine = 'xelatex'
"autocmd Filetype tex setl updatetime=20
autocmd Filetype tex setl updatetime=500
"let g:livepreview_previewer = 'evince'
"nmap <F12> :LLPStartPreview<cr>
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
"let g:livepreview_previewer = 'open -a texshop'
"let g:livepreview_previewer = 'open -a PDF\ Expert'
let g:livepreview_previewer = 'open -a Skim'
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
" Vimtex Latex
set shellslash
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
"""""""""""""""""""""""""""""""""""""

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
map ,r :call CompileRun()<CR>
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
elseif &filetype == 'vim'
			exec "source %"
endif
    endfunc

"自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.c,*h,*.sh,*.py,*.tex exec ":call SetHeader()"
func! SetHeader()
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif expand("%:e") == 'tex'
        call setline(1, "%!Tex program = xelatex")
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
let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""""""""""""""""""""""""""""""""""

" nerdtree 配置
" 1. 打开 neovim 时自动打开目录
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 设置 NERDTree 窗口位置，窗口大小
let NERDTreeWinPos=1
let NERDTreeWinSize=28
" vim-Startify 设置
" 设置书签
let g:startify_bookmarks            = [
            \ '~/.config/nvim/init.vim',
            \ '~/.vimrc',
            \]

" 起始页显示的列表长度
let g:startify_files_number = 20

""""""""""""""""""""""""""""""""""""""
"" lightline
" gruvbox_lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline#bufferline#number_map = {
\ 0: '₀', 1: '₁', 2: '₂', 3: '₃', 4: '₄',
\ 5: '₅', 6: '₆', 7: '₇', 8: '₈', 9: '₉'}
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
"let g:lightline#bufferline#ordinal_separator = ''
let g:lightline = {
	\ 'tabline': {'left': [['buffers']], 'right': [['close']]},
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' },
	\ 'component': {
	\   'lineinfo': ' %3l:%-2v',
	\   'relativepath': '%f',
	\   'absolutepath': '%F',
	\ },
	\ 'colorscheme': 'gruvbox',
	\ 'active': {
	\   'left': [
	\     ['paste', 'mode'],
	\     ['ctrlpmark', 'filename', 'fugitive', 'blame', 'method'],
	\   ],
	\   'right':[
	\     ['fileencoding', 'fileformat', 'lineinfo', 'percent'],
	\	  ['diagnostic', 'cocstatus', 'currentfunction'],
	\	  ['filetype']
	\   ],
	\ },
	\ 'component_raw': {'buffers': 1},
	\ 'component_type': {'buffers': 'tabsel'},
	\ 'component_expand': {'buffers': 'lightline#bufferline#buffers'},
	\ 'component_function': {
	\  'fugitive': 'LightlineFugitive',
	\  'blame': 'LightlineGitBlame',
	\  'gitbranch': 'gitbranch#name',
	\  'readonly': 'LightlineReadonly',
	\  'mode': 'LightlineMode',
	\  'filename': 'LightlineFilename',
	\  'cocstatus':'coc#status',
	\  'currentfunction': 'CocCurrentFunction',
	\  'filetype': 'MyFiletype',
	\  'fileformat': 'MyFileformat',
	\  'method': 'NearestMethodOrFunction',
	\ }
\ }
" lightline-bufferline
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
set showtabline=2
set guioptions-=e
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

function! LightlineFugitive()
	if exists('*FugitiveHead')
		let branch = FugitiveHead()
		return branch !=# '' ? ''.branch : ''
	endif
	return ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  let readonly = &readonly ? ' ' : ''
  return readonly . filename . modified
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

"function! LightlineReadonly()
  ""return &readonly && &filetype !=# 'help' ? 'RO' : ''
		"return &readonly ? '' : ''
"endfunction
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

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
        \ &filetype ==# '__vista__' ? 'Vista' :
        \ lightline#mode()
endfunction
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:explorer_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
"""""""""""""""""""""""""""""""""""""
