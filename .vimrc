set nocompatible              " be iMproved, required (vi 와 호환되지 않도록 함)

"----------------------------------PLUGIN--------------------------------------"
" set the runtime path to include Vundle and initialize
" 설치 -> :PluginInstall | 삭제 -> :PluginClean
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'                    " VIM용 탐색기
Plugin 'scrooloose/nerdcommenter'               " 주석을 쉽게 달 수 있도록 도와줌
Plugin 'kien/ctrlp.vim'                         " Ctrl + p 파일 검색
Plugin 'majutsushi/tagbar'                      " sidebar 에서 현재 파일의 ctag들을 표시
Plugin 'nathanaelkane/vim-indent-guides'        " indent levels을 표시
Plugin 'AutoComplPop'                           " 자동완성 기능(Ctrl + P)를 자동으로 표시
Plugin 'ervandew/supertab'						" <Tab>을 통해 자동완성 기능 목록 이동 가능
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'moll/vim-node'							" Node
Plugin 'vim-airline/vim-airline'				" airline
Plugin 'flazz/vim-colorschemes'                 " skin
Plugin 'desert-warm-256'                        " skin
Plugin 'dracula/vim'                            " skin

call vundle#end()            " required
filetype plugin indent on    " required
"------------------------------------------------------------------------------"


"-----------------------------------SKIN---------------------------------------"
" Colorscheme
"syntax enable
"let g:solarized_termcolors=256
"set background=dark
"colorscheme desert

" dracular
syntax on
color dracula
"------------------------------------------------------------------------------"


"-------------------------------CUSTOM SETTING---------------------------------"
" Comment -> 주석 , LineNr -> 행의 라인
highlight Comment term=bold cterm=bold ctermfg=86
highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set ruler                               " 화면 오른쪽 아래에 커서 위치 표시
set showcmd                             " 화면 오른쪽 아래에 입력되는 명령키를 표시
set expandtab                           " tab을 space로 인식
set tabstop=4                           " 한번의 tab을 4칸으로 인식
set softtabstop=4                       " tab 간격을 공백문자로 변환하며 삭제할 때 탭 간격만큼 삭제하지 않고, 마치 탭 문자를 삭제하는 것처럼 설정하며 4칸 단위로 삭제함
set shiftwidth=4                        " >>, << 사용시 들여쓰기 4칸으로 사용
set backspace=indent,eol,start          " 백스페이스로 인덴트, EOL, 앞글자 삭제 가능
set copyindent                          " 새 행이 기존 행의 들여 쓰기에 사용 된 문자를 복사하여 사용
set autoindent                          " 자동 들여쓰기를 사용
"set paste                              " 복사하시 자동 들여쓰기 방지(autoindent, softtabstop 와 함께 사용 불가)
"set showmatch                          " 일치하는 괄호 하이라이팅
set smarttab                            " 앞에 space가 있는 곳에서 tab을 누르면 공백을 지워주고 탭만 들어감
set incsearch                           " /를 입력후 찾는 글자를 입력하는 순간 찾은 글자를 바료 표시
set nowrapscan                          " 검색할 때 문서의 끝에서 다시 처음으로 돌아가지 않음
set hlsearch                            " 검색어 강조
" 검색어의 배경색 설정
hi search ctermbg=3
set history=1000                        " 히스토리 개수 1000 설정
set undolevels=1000                     " undo 할 수 있는 히스토리 개수 1000 설정
set wrap                                " 텍스트 표시 방법을 설정(창 너비보다 길때 다음행에 표시)
set encoding=utf-8                      " vim 안에서 사용되는 문자의 인코딩 utf-8로 설정
set fileencodings=utf-8,cp949           " 파일 저장 인코딩 (cp949 가 ui message 한글이 깨지지 않게함)
set hidden                              " Controversial
set wildmenu                            " 명령 라인 완성이 향상된 기능으로 작동 (tab 눌렀을 때 작동)
set wildmode=list:longest               " 매칭되는 단어 목록을 리스트 형식으로 보여줌
"set visualbell                         " 사용자 실수를 경고할 때 비프음 대신에 화면을 한 번 번쩍이는 비주얼 벨로 경고함
set number                              " 라인 넘버 표시
"set relativenumber                     " 라인 넘버를 현재 커서가 위치한 라인과 상대적인 값으로 표시
set undofile                            " 자동으로 실행 취소(undo) 기록을 실행 취소 파일에 저장함
"set noundofile                         " 실행 취소(undo) 기록을 실행 취소 파일에 저장하지 않음
set ignorecase                          " 검색 시 대소문자를 무시함
set smartcase                           " 검색 문자열이 모두 소문자이면 대소문자를 구분하지 않고, 대문자가 하나라도 있으면 대소문자 구분
set gdefault                            " '찾아바꾸기' 할때 subtitute 플래그 'g'가 기본설정됨
set colorcolumn=80                      " 화면에 80번째 칼럼에 색깔 라인을 생성
" colorcolumn의 색상을 빨간색으로 설정
highlight colorcolumn ctermbg=red       
set textwidth=79                        " 79번째 글자를 넘기면 자동으로 개행됨
set formatoptions=cqnr1                 
set cursorline                          " 현재 커서가 위치한 행의 라인을 표시
set nojoinspaces                        " J 명령어로 줄을 이어 붙일 때 마침표 뒤에 한칸만 띄워 씀
set splitright                          " 
set splitbelow                          " 'split', 'vsplit' 명령어 사용 가능
set visualbell                          " 키를 잘못눌렀을 때 화면 프레시

" 다음 확장자를 가진 파일들을 무시함
set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" 임시 set clipboard=unnamed
let mapleader=","            " <leader> 는 기본적으로 '\'를 가리킴 ,를 \로 사용가능

" insert/normal 모드의 cursor 모양 변경
if &term =~ "screen."
    let &t_ti.="\eP\e[1 q\e\\"
    let &t_SI.="\eP\e[5 q\e\\"
    let &t_EI.="\eP\e[1 q\e\\"
    let &t_te.="\eP\e[0 q\e\\"
else
    let &t_ti.="\<Esc>[1 q"
    let &t_SI.="\<Esc>[5 q"
    let &t_EI.="\<Esc>[1 q"
    let &t_te.="\<Esc>[0 q"
endif

" 키 맵핑
nnoremap j gj
nnoremap k gk
nnoremap Y y$
nnoremap / /\v
nmap <tab> %
vmap <tab> %
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <Alt-Left> <C-O>
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>   " 오른쪽 아래 창에 설정파일 로드
noremap <c-h> <c-w>h                                " window 왼쪽 이동
noremap <c-j> <c-w>j                                " window 아래쪽 이동
noremap <c-k> <c-w>k                                " window 위쪽 이동
noremap <c-l> <c-w>l                                " window 오른쪽 이동
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" window move
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" tags
set tags=./tags,tags

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
"------------------------------------------------------------------------------"


"-------------------------------PLUGIN SETTING---------------------------------"
" NERDTree`
"map <C-e> <plug>NERDTreeTabsToggle<CR>
"map <leader>e :NERDTreeFind<CR>
nmap <F1> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0


" Tagbar
nnoremap <silent> <leader>t<space> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1


" Ctrlp
nnoremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_mruf_case_sensitive = 0
"let g:ctrlp_custom_ignore = {
"\ 'dir':  '\v[\/]\.(git|hg|svn)$',
"\ 'file': '\v\.(exe|so|dll)$',
"\ 'link': 'some_bad_symbolic_links',
"\ }
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.so$\|\.pyc$' }


" Indent-guides
autocmd filetype python,html,htmldjango,htmljinja :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=234
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1


" python-mode
let g:pymode_folding = 0
let g:pymode_rope_goto_definition_bind = '<leader>d<space>'
let g:pymode_lint_ignore = "E265,W0612,W0611"
let g:pymode_rope_completion = 0

 
" cscope
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>    
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>    

set csprg=/usr/bin/cscope
set csto=1
set csverb

command WQ wq
command Wq wq
command W w
command Q q
command WA wa
command Wa wa

nnoremap <silent> <leader>a<space> :A<CR>
                    

" supertab
let g:SuperTabDefaultCompletionType = '<c-n>'		" Tab으로 목록 위에서 아래로 이동
let g:SuperTabCrMapping=1							" 자동완성 후 Enter 줄바꿈 막기
" tab 간격 띄우기 ,<tab>으로 가능
inoremap <Leader><tab> <C-q><tab>


" vim-node
" <C-w>f by default opens it in a horizontal split. To have it open vertically
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif


" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


" emmet-vim (https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL)
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"------------------------------------------------------------------------------"
