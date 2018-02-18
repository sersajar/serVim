"" my VIM vimrc file without extra plugins November 2017-2018

"" VIM Basics
syntax on                     " Switch syntax highlighting on.
filetype on                   " Detect type of file.
set nocompatible              " Use vim api, not vi.
set showcmd                   " Show incomplete commands.
set showmode                  " Show current mode down bottom.
set hidden                    " Buffers can exist in the background.

" 1. General Settings {{{
"" General
set title                     " Show file in titlebar.
set number                    " Show line numbers.
set confirm                   " Asks before executing a command.
set wrap                      " Wrap lines.
set linebreak                 " Break lines at word (requires Wrap lines).
set showbreak=+++             " Wrap-broken line prefix.
set textwidth=90              " Line wrap (num of cols).
set scrolloff=2               " 2 lines above/below cursor when scrolling.
set visualbell                " Use visual bell (no beeping).
set cursorline                " Highlight the current line.
set background=dark           " Vim will try to use dark colors.
set laststatus=2              " Always show status bar.

"" Set status bar to something useful.
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

"" Create new buffer.
map <F5> :enew<CR>

"" Create a new buffer dividing screen % horitzontally.
map <C-F5> :new<CR>

"" Creates a new buffer dividing screen | vertically.
map <C-F6> :vert new<CR>

"" Move Cycling through buffers.
map <F2> :bprevious<CR>
map <F3> :bnext<CR>

"" Close current buffer.
map <F4> :bd<CR>
" }}}

" 2. Searching Settings {{{
"" Search
set hlsearch                  " Highlight all search results.
set ignorecase                " Always case-insensitive...
set smartcase                 " ... unless we type a Capital letter.
set incsearch                 " Searches for strings incrementally.
set showmatch                 " Highlight a match [{()}] when cursor placed on.
set matchtime=2               " Show matching bracket for 0.2 seconds.
set matchpairs+=<:>           " Show matching angle brackets, specially for HTML.

"" unhighlight all matches searched.
noremap <silent> <C-l> :nohl<CR><C-l>
" }}}

" 3. Indentation Settings {{{
"" Indentation
filetype plugin indent on
filetype indent on

set autoindent                    " Auto-indent new lines.
set expandtab                     " Use spaces instead of tabs.
set shiftwidth=4                  " Number of auto-indent spaces.
set smartindent                   " Enable smart-indent.
set smarttab                      " Enable smart-tabs.
set softtabstop=4                 " Number of spaces per Tab.
set pastetoggle=<f12>             " Paste toggle on/off.

"" Auto-indent pasted text
noremap p p=`]<C-o>
noremap P P=`]<C-o>
" }}}

" 4. Autocomplete Settings {{{
"" auto-complete: ^N ^P

"" auto (parentheses)
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

"" auto {curly braces}
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"" auto [square braces]
inoremap [      []<Left>
inoremap [[     [
inoremap []     []

"" auto "'quotes' and double-quotes
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap "      ""<Left>

"" auto <angle braces>
inoremap <      <><Left>
inoremap <<     <
inoremap <>     <>

" }}}

" 5. Advanced Settings {{{
"" Advanced
let mapleader="ç"                     " remap <Leader> (\) for ç (ç).
set ruler                             " Show row and column ruler info.
set nobackup                          " No backup files.
set nowritebackup                     " No write backup.
set noswapfile                        " Dont create swap file.
set lazyredraw                        " No redraw when executing macros.
set history=100                       " Command history.
set clipboard+=unnamed                " Use system clipboard.
set foldenable                        " Enable folding.
set foldmethod=marker                 " Gives the ilusion of remembering folds.
set splitbelow                        " New windows appears below...
set splitright                        " ... and to the right.
set list listchars=tab:\ \ ,trail:·   " Highlight trailing whitespace.
set undolevels=1000                   " Number of undo levels.
set encoding=utf-8                    " Set encoding to UTF-8.
set wildmenu                          " Visual autocomplete for command menu.
set autoread                          " Reload files changed outside vim.
set backspace=indent,eol,start        " Backspace behaviour.
set mouse=nv                          " Use mouse in NORMAL & VISUAL mode.

"" Always highlight column 90
autocmd BufWinEnter * highlight ColorColumn ctermbg=white
set colorcolumn=95
" }}}

" 6. Useful Mappings {{{
"" Exit instantly from VISUAL mode, but better...
vnoremap <Esc> <Esc>

"" ... typing double comma (,,) maps to <Esc> togo to NORMAL mode.
noremap ,, <Esc>
inoremap ,, <Esc>

"" Open(Alt+up) and close(Alt+down) all Foldings in NORMAL mode.
noremap <A-Up> <Esc>zR
noremap <A-Down> <Esc>zM

"" Select and yank until beggining or end of line.
inoremap <S-Left> <Esc>v0
inoremap <S-Right> <Esc>vg_

"" Map Y to yank until EOL without newline, acting like yg_.
noremap Y yg_

"" Map Ç to go to end of line
noremap Ç $

"" Map ¡ to go to end of line and enter Insert mode.
noremap ¡ $a

"" Select sentence, paragraph, block or quotes and go into VISUAL mode.
noremap  Z vis
noremap <CR><CR> vip
noremap <space> vi}
noremap <space><space> va}
noremap <Leader> vi"
noremap <Leader><Leader> va"

" }}}

" 7. Navigation Mappings {{{
"" Disable arrow keys to move through NORMAL mode.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" Use Alt-N to switch between buffers where N is the buff number 1-9.
map <A-1> :confirm :b1 <CR>
map <A-2> :confirm :b2 <CR>
map <A-3> :confirm :b3 <CR>
map <A-4> :confirm :b4 <CR>
map <A-5> :confirm :b5 <CR>
map <A-6> :confirm :b6 <CR>
map <A-7> :confirm :b7 <CR>
map <A-8> :confirm :b8 <CR>
map <A-9> :confirm :b9 <CR>

"" Shift+arrow to navigate through windows.
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

"" Moving in INSERT mode to the begging(I) or the end(A) of line.
inoremap <A-Left> <Esc>I
inoremap <A-Right> <Esc>A

" }}}

" 8. Commands {{{
" Jump to last cursor
autocmd BufReadPost *
   \ if line ("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal g`\"" |
   \ endif

" }}}

"" Uncomment to use a dictionary. Set spell path before.
"setlocal spell spelllang=en_gb
"set dictionary-=/path/to/spell/dict dictionary+=/path/to/spell/dict'

