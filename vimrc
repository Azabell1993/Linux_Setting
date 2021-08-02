" VIM 옵션
syntax on						" 구문강조 사용
set autoindent						" 자동 들여쓰기
set smartindent						" 스마트한 들여쓰기
set cindent						" C 프로그래밍용 자동 들여쓰기
set shiftwidth=4					" 자동 들여쓰기 4칸
set tabstop=4						" 탭을 4칸으로
set nobackup						" 백업 파일을 안만듬
set nowrapscan						" 검색할 때 문서의 끝에서 처음으로 안돌아감
set ignorecase						" 검색시 대소문자 무시, set ic 도 가능
set hlsearch						" 검색어 강조, set hls 도 가능

set number						" 행번호 표시, set nu 도 가능

set nocompatible					" 오리지날 VI와 호환하지 않음
set backspace=eol,start,indent				" 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set ruler						" 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set cursorline						" 편집 위치에 커서 라인 설정
set laststatus=2					" 상태바 표시를 항상한다
set incsearch						" 키워드 입력시 점진적 검색
set fencs=ucs-bom,utf-8,euc-kr.latin1			" 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8					" 파일저장인코딩
set tenc=utf-8						" 터미널 인코딩
set background=dark					" 하이라이팅 lihgt / dark
set history=1000					" vi 편집기록 기억갯수 .viminfo에 기록
set mouse=a
set t_Co=256						" 색 조정
highlight Comment term=bold cterm=bold ctermfg=4	" 코멘트 하이라이트
set wrap
set noswapfile
set lbr
set mouse=a						" vim에서 마우스 사용
set gfn=jin3.pcf\9


"VundleVim/Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

filetype indent on
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

Plugin 'udalov/kotlin-vim'
Plugin 'jason0x43/vim-js-indent'
Bundle "hsanson/vim-android"
Plugin 'scrooloose/nerdtree'
nmap <F7> :NERDTree<CR>
nmap nerd :NERDTreeToggle<CR>

au BufNewFile,BufRead *.java :source ~/.vim/myjava.vim



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                                                                                                            ""
""                                                                                                            ""
""                                               python setting                                               ""
""                                                                                                            ""
""                                                                                                            ""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"python
"
set nocompatible              " be iMproved, required
filetype off                  " required

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim

"--------------------------------------------Plugin ??

let g:buildFile = 'foo.xml'
let g:antOption = '-debug'
let g:logFile = 'foo.log' 

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'    
"최초 번들 설정

Plugin 'davidhalter/jedi-vim'  
"python 자동완성 plugin

let g:jedi#show_call_signatures=0    
" 자세히 설명하는 창을 보여준다. 1 = 활성화 // 0 = 비활성화

let g:jedi#popup_select_first="0"      
" 자동완성시 자동 팝업 등장x

let g:jedi#force_py_version=3      
" 자동완성 3 = python,  2 = python2

Plugin 'hynek/vim-python-pep8-indent'   
" python 자동 들여쓰기 Plugin

filetype plugin indent on
" python 자동 들여쓰기 on

Plugin 'nvie/vim-flake8'                
" python 문법 검사 plugin

" let g:syntastic_python_checkers=['flake8']        
" 하기 실행시 현재를 주석으로

" let g:syntastic_python_flake8_args='--ignore='    
" 무시하고자하는

call vundle#end()

"---------------------------------------------Plugin 종료

"--------------------------------------------- vim 기본 설정

if has("syntax")
syntax on           "구문 강조
endif
set t_Co=256        "구문강조 색 변경
set encoding=utf-8
set nu              "Line 출력
set tabstop=4       "<Tab> key 4칸 이동
set cursorline      "현재 줄 강조

"-------------------------------------------- vim 기본 설정 끝
"
" -------------------------------------------맨밑 상태바 표시 항상
set laststatus=2    "??? ??
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\  "현재 라인 위치 출력
"------------------------------------------- au filetype (파일 타입 지정)
au FileType python map <f2> : !python3 %

"F7 : 문법 검사. 코드 맨 마지막에다가 커서를 옮기고 키 입력
"F2 + Enter : vim상태에서 가컴파일

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"auto compile
autocmd FileType c 		nnoremap <buffer> <F5> :w<CR>:!gcc -o %< % && ./%< <CR>
autocmd FileType cpp 	nnoremap <buffer> <F5> :w<CR>:!g++ -o %< % && ./%< <CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:!python % <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

iabbr __email jeewoo19930315@gmail.com
iabbr <expr> __time strftime("%Y-%m-%d %H:%M:%S")
iabbr <expr> __file expand('%:p')
iabbr <expr> __name expand('%')
iabbr <expr> __pwd expand('%:p:h')
iabbr <expr> __branch system("git rev-parse --abbrev-ref HEAD"i)

Bundle 'Valloric/YouCompleteMe'

filetype indent on
filetype plugin on
syntax on

augroup sh
  au BufNewFile *.sh 0r ~/.vim/sh_header.temp
 "au BufWritePost *.sh,*.pl,*.py,*.cgi :silent !chmod a+x <afile>
augroup end



"C/C++ Header File Setting

"javascript
call vundle#begin()
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'nanotech/jellybeans.vim'
Plugin 'blueyed/vim-diminactive'

call vundle#end()

let g:jsx_ext_required = 0

"isRuslan/vim~ex6
call vundle#begin()
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'Raimondi/delimitMate'
call vundle#end()


"js Syntastic
let g:syntastic_javascript_checkers = ['eslint']

""""""""""""""

vmap ,c :s/^/\/\//g<ENTER>


"myjava.vim Setting
au BufNewFile,BufRead *.java :source ~/.vim/myjava.vim

"*.py header
au bufnewfile *.py 0r /home/jiwoo/.vim/py.temp

"*.java header
au bufnewfile *.java 0r /home/jiwoo/.vim/java.temp

"java"
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc
