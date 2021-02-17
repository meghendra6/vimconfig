"====================================================
"= Bundle
"====================================================
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set nocompatible               " be iMproved, required!
filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/vim-clap'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'rust-lang/rust.vim'


"Plug 'SuperTab'
"Plug 'SuperTab-continued.'
"Plug 'OmniCppComplete'
"Plug 'AutoComplPop'
"Plug 'Valloric/YouCompleteMe'
"Plug 'ajh17/VimCompletesMe'

Plug 'tpope/vim-fugitive'
"Plug 'Syntastic'
"Plug 'dense-analysis/ale' " Async. Syntastic
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Lokaltog/vim-easymotion'
"Plug 'haya14busa/incsearch-easymotion.vim'
"Plug 'haya14busa/incsearch-fuzzy.vim'

"Plug 'snipMate'
"Plug 'SirVer/UltiSnips'	" Track the engine.
Plug 'honza/vim-snippets'	" Snippets are separated from the engine. Add this if you want them:
Plug 'neoclide/coc.nvim'

"Ï£ºÏÑùÎã¨Í∏∞: \cc, \cn, \cs
"Îã§Î•∏Î™®Ïñë Ï£ºÏÑù ÏÑ§Ï†ï: \ca
"Ï£ºÏÑùÌï¥Ï†ú: \<space>
Plug 'Xuyuanp/git-nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'scrooloose/NERDTreeToggle'
Plug 'preservim/nerdcommenter'

"Plug 'taglist.vim'
" Plug 'int3/vim-taglist-plus'

"Plug 'bufexplorer.zip'
"Plug 'DirDiff.vim'
Plug 'wesleyche/SrcExpl'
Plug 'vim-scripts/cscope_macros.vim'
Plug 'vim-scripts/gtags.vim'
Plug 'lyuts/vim-rtags'
"Plug 'armasm'
"Plug 'https://github.com/dhruvasagar/vim-table-mode.git'

Plug 'hari-rangarajan/CCTree'

"Plug 'FuzzyFinder'
"Plug 'git://git.wincent.com/command-t.git'
" Plug 'ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'terryma/vim-multiple-cursors'
" Plug 'jremmen/vim-ripgrep'
Plug 'chrisbra/NrrwRgn'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-surround'

" Shows line changes
Plug 'mhinz/vim-signify'

" Plug 'airblade/vim-rooter'

Plug 'Raimondi/delimitMate'
"
"Pyth
"Plug 'klen/python-mode'
"Plug 'vim-scripts/Pydiction'
"Plug  'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'

"Color Highlight
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'jacoborus/tender.vim'
"Plug 'lifepillar/vim-solarized8'
"Plug 'tomasr/molokai'

"Plug 'Shougo/denite.nvim'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'Lokaltog/neoranger'
Plug 'rbgrouleff/bclose.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" see :h vundle for more details or wiki for FAQ

filetype plugin indent on     " required!
syntax on

"====================================================
"= Clap Configuration
"====================================================
let g:clap_layout = { 'relative': 'editor' }
let g:clap_theme = 'material_design_dark'
let g:clap_open_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
nmap <silent> cj :Clap jumps<CR>
nmap <silent> cy :Clap yanks<CR>
nmap <silent> cf :Clap files<CR>
nmap <silent> cr :Clap grep<CR>
nmap <silent> ch :Clap history<CR>
nmap <silent> cd :Clap git_diff_files<CR>
nmap <silent> cc :Clap commits<CR>
nmap <silent> cb :Clap buffers<CR>

"====================================================
"= Rust-Analyzer Configuration
"====================================================
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

"====================================================
"= AutoComplPop Configuration
"====================================================
"autocomplpop
"function! InsertTabWrapper()
"	let col = col('.')-1
"	if !col || getline('.')[col-1]!~'\k'
"		return "\<TAB>"
"	else
"		if pumvisible()
"			return "\<C-N>"
"		else
"			return "\<C-N>\<C-P>"
"		end
"	endif
"endfunction
"
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"
"hi Pmenu ctermbg=blue
"hi PmenuSel ctermbg=yellow ctermbg=black
"hi PmenuSbar ctermbg=blue

"====================================================
"= 어셈블리 파일을 C처럼 인식하여 주석을 달기 위한 트릭
"====================================================
au BufRead,BufNewFile *.S		set ft=c

"====================================================
"= 기본 설정
"====================================================
syntax enable
set cindent			" 들여쓰기 설정
set smartindent			" Smart Indent
set smarttab            " Smart Tab
set autoindent			" auto indent
set bs=indent,eol,start
set ruler			" 화면 우측 하단에 현재 커서의 위치(줄,칸)를 보여준다.
set number			" 줄번호 출력
set modifiable
set hlsearch			" Highlight Search
set incsearch
set ignorecase			" 대소문자구분 안함
set printoptions=portrait:n,wrap:n,duplex:off
set fileencodings=utf-8,euc-kr
set gfn=나눔고딕코딩\ 12	" gvim용 폰트 설정
"colorscheme elflord
"colorscheme molokai
"colorscheme CodeSchool3
"colorscheme apprentice
"colorscheme solarized8_dark
colorscheme termschool
"colorscheme tender
set termguicolors
"set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
"set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]	" set the statusline
set laststatus=2									" showing statusline
set mps+=<:>			" 괄호짝 찾기에서 <> 도 찾도록 추가
set showmatch			" show matched brace
set cursorline

set completeopt+=preview

let mapleader = ','

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
set hidden

" === TAB/Space settings === "
"set ts=8			" tab stop - tab 크기
"set sw=8			" shift width - shift 크기 조절
"set sts=8			" soft tab stop - tab 이동 크기
"set noexpandtab
" Change number of spaces that a <Tab> counts for during editing ops
set sts=4
set tabstop=4
" Indentation amount for < and > commands.
set sw=4
" Insert spaces when TAB is pressed.
set expandtab

" Default enable indent guides from plugin
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 2

" default updatetime 4000ms is not good for async update (signify)
set updatetime=100


" Highlight Trailing whitespace
highlight TrailSpace ctermbg=red guibg=red
match TrailSpace /\s\+$/

"==========================
"= Moving lines up or down
"==========================
" 화면 오른쪽을 사용
let g:buffergator_viewport_split_policy = 'R'

" 단축키를 직접 지정하겠음
let g:buffergator_suppress_keymaps = 1

" 버퍼 돌기 (Looper buffers)
"let g:buffergator_mru_cycle_loop = 1

" 이전 버퍼로 이동
nmap <silent>bj :BuffergatorMruCyclePrev<cr>

" 다음 버퍼로 이동
nmap <silent>bk :BuffergatorMruCycleNext<cr>

" 모든 버퍼 보기
nmap <silent>bl :BuffergatorOpen<cr>

" 위의 첫번재 해결책과 공유하는 단축키 (버퍼 닫기를 뜻함)
nmap <leader>T :enew<cr>
nmap <silent>bq :bp <BAR> bd #<cr>

"==========================
"= Rust Lang
"==========================
nmap <A-r> :!cargo run<CR>
"==========================
"= Moving lines up or down
"==========================
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"==========================
"= NeoRanger
"==========================
" Open ranger at current file with "-"
nnoremap <silent> - :RangerCurrentFile<CR>

" Open ranger in current working directory
nnoremap <silent> <Leader>- :Ranger<CR>

" for setting ranger viewmode values
let g:neoranger_viewmode='miller' " supported values are ['multipane', 'miller']

" for setting any extra option passed to ranger params
let g:neoranger_opts='--cmd="set show_hidden true"' " this line makes ranger show hidden files by default

"==========================
"= Easymotion settings
"==========================
" Default key binding
"map <Leader> <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>e <Plug>(easymotion-bd-f)
nmap <Leader>e <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
"nmap <Leader>ff <Plug>(easymotion-overwin-f2)

"==========================
"= Ultisnips settings
"==========================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<cr>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"==========================
"= Coc-ultisnips settings
"==========================
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


""==========================
""= Coc-snippet settings
""==========================
"" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
"
"" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
"
"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
"
"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'
"
"" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
"
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_snippet_next = '<tab>'

"==========================
"= Coc settings
"==========================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to nammap <m
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> ge <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected rem
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAcmd)

" Remap for do codeAcm" m
" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selecm"xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"==========================
"= Ack settings
"==========================
" nmap <Leader>rg :Rg

"==========================
"= airline settings
"==========================
" 버퍼 목록 켜기
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'tender'

" 파일명만 출력
"let g:airline#extensions#tabline#fnamemod = ':t'

""==========================
""= ale settings
""==========================
""let g:ale_lint_on_save = 1                               "Lint when saving a file
"let g:ale_sign_error = '>>'                               "Lint error sign
"let g:ale_sign_warning = '--'                             "Lint warning sign
"let g:ale_statusline_format =[' %d E ', ' %d W ', '']    "Status line texts
"let g:ale_linters = {
"		\ 'cpp': ['clang'],
"		\ 'c':['clang'],
"		\'python':['flake8', 'pylint']
"		\}                                       "Lint cpp with clang
"
"let g:ale_fixers = {
"		\ 'cpp': ['clang-format'],
"		\ 'c':['clang-format'],
"		\ 'json':['prettier'],
"		\ 'python':['autopep8', 'isort']
"		\ }                                      "Fix clang errors
"" ALEFix, ALEFixSuggest 로 fix 사용 가능
""
"" Set this. Airline will handle the rest.
"let g:airline#extensions#ale#enabled = 1

"==========================
"= VCM settings
"==========================
"autocmd FileType vim let b:vcm_tab_complete = 'vim'


"==========================
"= YCM settings
"==========================
"let g:ycm_global_ycm_extra_conf = "./.ycm_extra_conf.py"
"let g:ycm_confirm_extra_conf = 0
""To avoid conflict snippets
"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
"let g:ycm_autoclose_preview_window_after_completion = 1
"
"nnoremap <C-s>g :YcmCompleter GoTo<CR>
"nnoremap <C-s>gg :YcmCompleter GoToImprecise<CR>
"nnoremap <C-s>d :YcmCompleter GoToDeclaration<CR>
"nnoremap <C-s>t :YcmCompleter GetType<CR>
"nnoremap <C-s>p :YcmCompleter GetParent<CR>

"==========================
"= Syntastic settings
"==========================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_cpp_config_file = '.syntastic'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"==========================
"= autocmd
"==========================
autocmd BufEnter *.c        setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd BufEnter *.h        setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd BufEnter *.cc       setlocal ts=8 sw=8 sts=8 expandtab
autocmd BufEnter *.cpp      setlocal ts=8 sw=8 sts=8 expandtab
autocmd BufEnter *.S        setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd BufEnter *.py       setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter Makefile   setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter Makefile.* setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter *.mk       setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter .*         setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter *.md       setlocal ts=4 sw=4 sts=4 noexpandtab
autocmd BufEnter *.sh       setlocal ts=8 sw=8 sts=8 noexpandtab nocindent
autocmd BufWritePre *.go    :silent call CocAction('runCommand', 'editor.action.organizeImport')


"augroup vimrc_autocmds
""    autocmd!
"    " highlight characters past column 120
"    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
"    autocmd FileType python match Excess /\%120v.*/
"    autocmd FileType python set nowrap
""    augroup END
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if !has('nvim')
"====================================================
" Powerline setup
"====================================================
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
endif

""====================================================
""= gtags.vim 설정
""====================================================
"" enable gtags module
"let g:gutentags_modules = ['ctags', 'gtags_cscope']
"
"" config project root markers.
"let g:gutentags_project_root = ['.root']
"
"" generate datebases in my cache directory, prevent gtags files polluting my project
"let g:gutentags_cache_dir = expand('~/.cache/tags')
"
"" change focus to quickfix window after search (optional).
"let g:gutentags_plus_switch = 1

"====================================================
"= gtags.vim 설정
"====================================================
let g:rtagsJumpStackMaxSize = 100


"====================================================
"= gtags.vim 설정
"====================================================
" S-F2 is recognized as <F14>
" C-F2 is recognized as <F26>
" A-F2 - not recognized ,but A-F1 is recognized as <F37> (keymap.c goes only up to F37)
nmap <S-F2> :copen<CR>
nmap <S-F3> :cclose<CR>
nmap <S-F4> :Gtags<SPACE>
nmap <S-F5> :Gtags -f %<CR>
nmap <S-F6> :GtagsCursor<CR>
nmap <S-F7> :Gozilla<CR>
" nmap <F14> :copen<CR>
" nmap <F15> :cclose<CR>
" nmap <F17> :Gtags<SPACE>
" nmap <F18> :Gtags -f %<CR>
" nmap <F19> :GtagsCursor<CR>
" nmap <F20> :Gozilla<CR>
nmap <C-n> :cn<CR>
nmap <C-b> :cp<CR>
nmap <C-\><C-]> :GtagsCursor<CR>

",gd 입력. 현재 cursor가 위치한 stm",gr 입력. 현재 cursor가 위치한 string으로 reference검색.사용하는 곳의 위치를 보여줌.
" Temporary Disabled for rust
" nmap <Leader>gr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
",gs 입력. 현재 cursor가 위치한 stm",gg 입력, --grep pattern 검색, 모든 파일에서 검색, (h, c, txt 등)
nmap <Leader>gg :Gtags -go <C-R>=expand("<cword>")<CR><CR>
" ",gp 입력, 파일명 검색
" nmap <Leader>gp :Gtags -Po <C-R>=expand("<cword>")<CR><CR>
" ",ge 입력, --regexp 검색.
" nmap <Leader>ge :Gtags -ge <C-R>=expand("<cword>")<CR><CR>

" 위의 사용법과 동일하며, case senmnmap <Leadermnmap <Leadermnmap <Leadermnmap <Leadermnmap <Leaderm
"====================================================
"= 키맵핑
"====================================================
" <F3> 이전 정의로 이동 (SrcExpl 플러그인이 설정)
" <F4> 다음 정의로 이동 (SrcExpl 플러그인이 설정)
"map <F3> :BufExplorer<cr>
map <F4> :NERDTreeToggle<CR>
map <F5> :SrcExplToggle<CR>
" map <F6> :TlistToggle<CR>
map <F6> :TagbarToggle<CR>

"=====  PageUP PageDown
map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>

"=====  창 크기 조절
nmap <s-h> <C-W><
nmap <s-j> <C-W>-
nmap <s-k> <C-W>+
nmap <s-l> <C-W>>

"===== mnmap <c-j> <c-w>j
"nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

"===== Vim 내에서 창 간 이동
" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.
"nmap <C-@>s :cs m"nmap <C-@>g :cs m"nmap <C-@>c :cs m"nmap <C-@>t :cs m"nmap <C-@>e :cs m"nmap <C-@>f :cs m"nmap <C-@m"nmap <C-@>d :cs m
"===== 버퍼간 이동
map <leader>bx :bn!<CR>	  " Switch to Next File Buffer
map <leader>bz :bp!<CR>	  " Switch to Previous File Buffer
map <leader>bw :bw<CR>	  " Close Current File Buffer

"===== for swpart
"map <F2> <ESC>ko<End>/* swpart_lji_<C-R>=strftime("%Y%m%d")<CR> */<ESC>j<Home>
map <F2> <ESC>ko<End>/*   */<ESC>3hi

"===== for mac
imap <F13> <Insert>


"===== make
let startdir = getcwd()
func! Make()
	exe "!cd ".startdir
	exe "make"
endfunc
nmap <leader>mk :call Make()<cr><cr>

"===== hexViewer
let g:hexViewer = 0
func! Hv()
        if (g:hexViewer == 0)
                let g:hexViewer = 1
                exe "%!xxd"
        else
                let g:hexViewer = 0
                exe "%!xxd -r"
        endif
endfunc
nmap <leader>h :call Hv()<cr>

"===== man
func! Man()
	let sm = expand("<cword>")
	exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
endfunc
nmap <leader>ma :call Man()<cr><cr>

"====================================================
"= Source Explorer config
"====================================================

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100
" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"
" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [
				\ "__Tag_List__",
				\ "NERD_tree_1",
				\ "Source_Explorer",
				\ "[BufExplorer]"
				\ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1
" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" // create/update the tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" // Set "<F3>" key for displaying the previous definition in the jump list
"let g:SrcExpl_prevDefKey = "<F3>"
" // Set "<F4>" key for displaying the next definition in the jump list
let g:SrcExpl_nextDefKey = "<F4>"




"====================================================
"= Tag List
"====================================================
"filetype on"vim filetype on
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_Exit_OnlyWindow=0
"window close=off
let Tlist_Auto_Open=0
let Tlist_Use_Right_Window=1

"====================================================
"= Project config
"====================================================
"if filereadable(".project.vimrc")
"	source .project.vimrc
"endif

"====================================================
"= NERD Tree
"====================================================
let NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0



"====================================================
"= tags 설정 (cscope, ctags)
"====================================================

"Cscope의 상대경로 문제를 해결하기 위해서 매번 cscope.out파일을 새로 읽는다.
function! LoadCscope()
  exe "silent cs reset"
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

"현재 디렉토리부터 root 디렉토리까지 tags를 찾는다.
set tags=tags;/


"====================================================
"= CCTree
"====================================================

source ~/.vim/bundle/CCTree/ftplugin/cctree.vim

let g:CCTreeCscopeDb = "cscope.out"
let g:CCTreeRecursiveDepth = 3
let g:CCTreeMinVisibleDepth = 3
let g:CCTreeOrientation = "leftabove"
let g:CCTreeWindowVertical = 1


"====================================================
"= NERD Commenter
"====================================================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

""====================================================
""= CTRLP
""====================================================
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o
"let g:ctrlp_custom_ignore = {
"            \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
"            \ 'file': '\v\.(exe|so|dll|pyc|o|class|png|jpg|jpeg)$'
"            \ }
"" Ignore in .gitignore
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']       "Ignore in .gitignore
"
"" 가장 가까운 .git 디렉토리를 cwd(현재 작업 디렉토리)로 사용
"" 버전 관리를 사용하는 프로젝트를 할 때 꽤 적절하다.
"" .svn, .hg, .bzr도 지원한다.
"let g:ctrlp_working_path_mode = 'r'
"
"" 여러 모드를 위한 단축키
"nmap <leader>bb :CtrlPBuffer<cr>
"nmap <leader>bm :CtrlPMixed<cr>
"nmap <leader>bs :CtrlPMRU<cr>

"====================================================
"= fzf
"====================================================
" Override C-P to include preview window
nnoremap <C-p> :call fzf#vim#gitfiles('', fzf#vim#with_preview('right:60%'))<CR>
" Current buffer tags
nnoremap <C-s> :BTags<cr>
" Most recent files
nnoremap <C-e> :FZFMru<cr>

" Match the theme on the FZF window
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

"
" FZF Most recent files
"
command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

"
" FZF Tags in current buffer
"
function! s:align_lists(lists)
  let maxes = {}
  for list in a:lists
    let i = 0
    while i < len(list)
      let maxes[i] = max([get(maxes, i, 0), len(list[i])])
      let i += 1
    endwhile
  endfor
  for list in a:lists
    call map(list, "printf('%-'.maxes[v:key].'s', v:val)")
  endfor
  return a:lists
endfunction

function! s:btags_source()
  let lines = map(split(system(printf(
    \ 'ctags -f - --sort=no --excmd=number --language-force=%s %s',
    \ &filetype, expand('%:S'))), "\n"), 'split(v:val, "\t")')
  if v:shell_error
    throw 'failed to extract tags'
  endif
  return map(s:align_lists(lines), 'join(v:val, "\t")')
endfunction

function! s:btags_sink(line)
  execute split(a:line, "\t")[2]
endfunction

function! s:btags()
  try
    call fzf#run({
    \ 'source':  s:btags_source(),
    \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
    \ 'down':    '40%',
    \ 'sink':    function('s:btags_sink')})
  catch
    echohl WarningMsg
    echom v:exception
    echohl None
  endtry
endfunction

command! BTags call s:btags()

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" Mapping commands
nmap <silent> <Leader>rg :Rg <C-R><C-W><CR>
nmap <silent> rg :Rg<CR>
nmap <silent> fc :Commits<CR>
nmap <silent> fd :GFiles<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)


"====================================================
"= vim-multiple-cursors
"====================================================
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<A-n>'
let g:multi_cursor_select_all_word_key = '<A-a>'
let g:multi_cursor_start_key           = 'g<A-n>'
let g:multi_cursor_select_all_key      = 'g<A-a>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-b>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"====================================================
"= delimitMate
"====================================================
let delimitMate_expand_cr=1

"====================================================
"= vim-cpp-enhanced-highlight
"====================================================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

"====================================================
"= Check Symbol
"====================================================
source ~/.vimconfig/plugins/checksymbol.vim

"=====================================================
"" Python settings
"=====================================================

"" python executables for different plugins
"let g:python_host_prog  = '/Users/meghendra/.pyenv/shims/python'
"let g:python3_host_prog  = '/Users/meghendra/.pyenv/shims/python3'
"
"let g:pymode_python='python3'
"let g:syntastic_python_python_exec='python3'
"
"" rope
"let g:pymode_rope=0
"let g:pymode_rope_completion=0
"let g:pymode_rope_complete_on_dot=0
"let g:pymode_rope_auto_project=0
"let g:pymode_rope_enable_autoimport=0
"let g:pymode_rope_autoimport_generate=0
"let g:pymode_rope_guess_project=0
"
"" documentation
"let g:pymode_doc=0
"let g:pymode_doc_key='K'
"
"" lints
"let g:pymode_lint=0
"
"" virtualenv
"let g:pymode_virtualenv=1
"
"" breakpoints
"let g:pymode_breakpoint=1
"let g:pymode_breakpoint_key='<leader>b'
"
"let mapleader = ','
"
"" syntax highlight
"let g:pymode_syntax=1
"let g:pymode_syntax_slow_sync=1
"let g:pymode_syntax_all=1
"let g:pymode_syntax_print_as_function=g:pymode_syntax_all
"let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
"let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
"let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
"let g:pymode_syntax_highlight_self=g:pymode_syntax_all
"let g:pymode_syntax_indent_errors=g:pymode_syntax_all
"let g:pymode_syntax_string_formatting=g:pymode_syntax_all
"let g:pymode_syntax_space_errors=g:pymode_syntax_all
"let g:pymode_syntax_string_format=g:pymode_syntax_all
"let g:pymode_syntax_string_templates=g:pymode_syntax_all
"let g:pymode_syntax_doctests=g:pymode_syntax_all
"let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
"let g:pymode_syntax_builtin_types=g:pymode_syntax_all
"let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
"let g:pymode_syntax_docstrings=g:pymode_syntax_all
"
"augroup vimrc_autocmds
"    autocmd!
"    autocmd FileType python set colorcolumn=
"augroup END
"
"" code folding
"let g:pymode_folding=0
"
"" pep8 indents
"let g:pymode_indent=1
"
"" code running
"let g:pymode_run=1
"
"" syntastic
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_enable_signs=1
"let g:syntastic_check_on_wq=0
"let g:syntastic_aggregate_errors=1
"let g:syntastic_loc_list_height=5
"let g:syntastic_error_symbol='X'
"let g:syntastic_style_error_symbol='X'
"let g:syntastic_warning_symbol='x'
"let g:syntastic_style_warning_symbol='x'
"let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

"====================================================
"= Rust
"====================================================
" rusty-tags must be installed. (cargo install rusty-tags)
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically re-read file if a change was detected outside of vim
set autoread

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backupdir=~/.local/share/nvim/backup " Don't put backups in current dir
set backup
set noswapfile

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
