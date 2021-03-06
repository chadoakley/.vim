execute pathogen#infect()

""
"" Basic Setup
""

set nocompatible       " Use vim, no vi defaults
set number             " Show line numbers
set ruler              " Show line and column number
set cursorline         " Show hilight on cursor
syntax enable          " Turn on syntax highlighting allowing local overrides
set encoding=utf-8     " Set default encoding to UTF-8
set hidden
filetype plugin indent on
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set clipboard=unnamed " yanks go to clipboard, too
set timeoutlen=350     " this supposedly makes escape take less time
set cc=80

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:▸\ ,eol:¬       " a tab should display as "▸ ", end of line a "¬"
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.
set nobackup
set noswapfile
" persistent undo
set undodir=~/.vim/_backup//
set undofile

""
"" syntastic weird balloon issue fix
""

"" let g:syntastic_enable_balloons = 0

""
"" BEGIN PERSONAL
""
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
    exe 'source' f
endfor

color molokai
set background=dark
set guifont=Monaco\ for\ Powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
" set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
set go-=L " Removes left hand scroll bar

" This pulls in my keybindings
source ~/.vim/mappings.vim
