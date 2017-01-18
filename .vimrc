"ファイルを読み込む時の文字コードの判定順序 
set fencs=iso-2022-jp,utf-8,euc-jp,cp932,ucs-bom.default

"編集中に `.<FILENAME>.swp' ファイルを作らない
set noswapfile

"保存時に `<FILENAME>~' ファイルを作らない
set nobackup

"保存時に `.<FILENAME>.un~' ファイルを作らない
set noundofile

"バッファに合わせてカレントディレクトリを変更する
"注意：このオプションがオンになっていると動かないプラグインがある
if exists("+autochdir")
	set autochdir
endif

"行番号を表示する
set number

"ルーラーを表示する
set ruler

"ウィンドウが分割されていなくてもステータスラインを表示する
set laststatus=2

set statusline=%<%f\ %h%m%r\ %{'('.(&fenc!=''?&fenc:&enc).'-'.&ff.')'}\ %y%=%-14.(%l,%c%V%)\ %P

"長い行を折り返す
"水平スクロールコマンド: zh zl zH zL zs ze
set wrap

"set wrap かつ set nolist 用の設定
"折り返した行の先頭に `+++ ' を表示する
"set linebreak
"set showbreak="+++ "
"行番号の位置まで折り返す
"set cpoptions+="n"

"encoding=cp932 (default) だと文字コード自動判別が間違うことが多く、
"utf-8文字の変換に失敗することがある
set encoding=utf-8

"タブと行末を強調するか
set nolist
set listchars=eol:$,tab:>-,extends:>,precedes:<

"East Asian Ambiguous Width Character を全角とする
"encoding が utf-8 系のときのみ有効
"listchars, fillchars に全角の可能性がある文字が使えなくなる
set ambiwidth=double

"カーソル位置を強調する
"set cursorline
"set cursorcolumn

set history=1000

if has("syntax")
	syntax on
	colorscheme desert
endif

set showcmd
set showmatch
set ignorecase
set smartcase "case sensitive, if search pattern containing upper case char
set incsearch
set hlsearch "highlight all matches
" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>
" Press F5 to insert current time
noremap <F5> :call append(line('.') - 1, strftime("%c"))<CR>
set nowrapscan
set wildmenu

set hidden
if has('mouse')
  set mouse=a
endif

set autoindent
"挿入モードのとき <BS> <Del> CTRL-W CTRL-U で削除できるようにする
set backspace=indent,eol,start


if $USER != 'root'
	set modeline
else
	set nomodeline
endif

"ウィンドウ移動マップ追加
nnoremap <S-Up> <C-w>k
nnoremap <S-Down> <C-w>j

"コマンドラインウィンドウでtcsh風の編集キーを使う
"cnoremap <C-A> <Home>
"cnoremap <C-F> <Right>
"cnoremap <C-B> <Left>
"cnoremap <Esc>b <S-Left>
"cnoremap <Esc>f <S-Right>




" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Revert with ":filetype off".
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | au! | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  augroup END

endif " has("autocmd")

" i, / で IME を ON にするか
if has("multi_byte_ime")
	set iminsert=0
	set imsearch=0
	set noimcmdline
endif

if has("gui")
	" Alt-Space is System menu
	noremap <M-Space> :simalt ~<CR>
	inoremap <M-Space> <C-O>:simalt ~<CR>
	cnoremap <M-Space> <C-C>:simalt ~<CR>
	" C-z don't minimize
	map <C-z> <Esc>
endif

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" prevent accidently only one window
" 0: close, 1: only, 2: hsplit, 3: vsplit
noremap <C-w><C-o> <C-w><C-w>
noremap <C-w>o <C-w><C-w>
noremap <C-w>0 <C-w>c
noremap <C-w>1 <C-w>o
noremap <C-w>2 <C-w>s
noremap <C-w>3 <C-w>v
