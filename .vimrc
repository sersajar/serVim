"" General
syntax on           " Switch syntax highlighting on, when the terminal has colors
set nocompatible    " Use vim, not vi api
set showcmd         " Show incomplete commands

set number	        " Show line numbers
set no wrap	        " Wrap lines
set linebreak	      " Break lines at word (requires Wrap lines)
set showbreak=+++	  " Wrap-broken line prefix
set textwidth=100	  " Line wrap (number of cols)
set showmatch	      " Highlight matching brace
set visualbell	    " Use visual bell (no beeping)
set cursorline      " Highlight the current line

set hlsearch	      " Highlight all search results
set smartcase	      " Enable smart-case search
set ignorecase	    " Always case-insensitive
set incsearch	      " Searches for strings incrementally

set autoindent	    " Auto-indent new lines
set expandtab	      " Use spaces instead of tabs
set shiftwidth=4	  " Number of auto-indent spaces
set smartindent	    " Enable smart-indent
set smarttab	      " Enable smart-tabs
set softtabstop=4	  " Number of spaces per Tab

"" Advanced
set ruler	                            " Show row and column ruler information
set list listchars=tab:\ \ ,trail:·   " Highlight tailing whitespace

set undolevels=1000	                  " Number of undo levels
set backspace=indent,eol,start	      " Backspace behaviour
set encoding=utf-8
set wildmenu    " Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set showmatch   " highlight a match [{()}] when cursor placed on start/end char

