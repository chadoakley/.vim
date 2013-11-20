execute pathogen#infect()

""
"" Basic Setup
""

set nocompatible       " Use vim, no vi defaults
set number             " Show line numbers
set ruler              " Show line and column number
syntax enable          " Turn on syntax highlighting allowing local overrides
set encoding=utf-8     " Set default encoding to UTF-8
set hidden
filetype plugin indent on
""set visualbell         " don't beep
""set noerrorbells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
if $TMUX == ''
  set clipboard+=unnamed " yanks go to clipboard, too
endif
set timeoutlen=350     " this supposedly makes escape take less time

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
filetype plugin indent on
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:▸\ ,eol:¬ " a tab should display as "▸ ", trailing whitespace as "."
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
"" Wild settings for CmdT
""

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*



""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.
set nobackup
set noswapfile


""
"" Folding settings
""

"" set foldmethod=indent   "fold based on indent
"" set foldnestmax=10      "deepest fold is 10 levels
"" set nofoldenable        "dont fold by default


""
"" Powerline settings
""

""let g:Powerline_symbols='fancy'
""let g:Powerline_theme='skwp'
""let g:Powerline_colorscheme='skwp'
let g:airline_powerline_fonts = 1
set ttimeoutlen=50

set laststatus=2 "always show the statusline

""
"" syntastic weird balloon issue fix
""

let g:syntastic_enable_balloons = 0

""
"" Some stuff for ruby debugger
""
let g:ruby_debugger_progname = 'mvim'


""
"" BEGIN PERSONAL
""

color molokai
set guifont=Monaco\ for\ Powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
" set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
set go-=L " Removes left hand scroll bar

" Lusty Juggler config
let g:LustyJugglerDefaultMappings = 0

" NerdTree Settings
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " closes vim if nerdtree is last open window

" UltiSnips options
let g:UltiSnipsSnippetDirectories=["UltiSnips", "../../snippets"]

" Surround setting for rails
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>"

" Sets vim gist clipboard destination
let g:gist_clip_command = 'pbcopy'

" This pulls in my keybindings
source ~/.vim/mappings.vim

"Some random vim rspec config
let g:rspec_command = "Dispatch zeus rspec {spec}"


" Custom Functions
"
