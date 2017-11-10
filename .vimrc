syntax on                     " Switch syntax highlighting on
set nocompatible              " Use vim api, not vi
set showcmd                   " Show incomplete commands
set showmode                  " Show current mode down bottom
set hidden                    " Buffers can exist in the background

"" General
set number                    " Show line numbers
set nowrap                    " dont Wrap lines
set linebreak                 " Break lines at word (requires Wrap lines)
set showbreak=+++             " Wrap-broken line prefix
set textwidth=100             " Line wrap (num of cols)
set visualbell                " Use visual bell (no beeping)
set cursorline                " Highlight the current line


"" Search
set hlsearch                  " Highlight all search results
set ignorecase                " Always case-insensitive...
set smartcase                 " ... unless we type a Capital letter
set incsearch                 " Searches for strings incrementally
set showmatch                 " highlight a match [{()}] when cursor placed on

" <Ctrl-l> redraws the screen and removes any search highlighting.
noremap <silent> <C-l> :nohl<CR><C-l>
"noremap <leader>c :nohl<CR>


"" Indentation
filetype indent on

set autoindent                " Auto-indent new lines
set expandtab                 " Use spaces instead of tabs
set shiftwidth=4              " Number of auto-indent spaces
set smartindent               " Enable smart-indent
set smarttab                  " Enable smart-tabs
set softtabstop=4             " Number of spaces per Tab

"" Auto-indent pasted text
noremap p p=`]<C-o>
noremap P P=`]<C-o>


"" Advanced
set ruler                             " Show row and column ruler info
set list listchars=tab:\ \,trail:·    " Highlight trailing whitespace
set undolevels=1000                   " Number of undo levels
set encoding=utf-8                    " Set encoding to UTF-8
set wildmenu                          " Visual autocomplete for command menu
set autoread                          " Reload files changed outside vim
set backspace=indent,eol,start        " Backspace behaviour

