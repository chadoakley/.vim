let mapleader = ","

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=



" BEGIN PERSONAL ADDITIONS
" =========================================

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <Leader>n :NERDTreeToggle<CR>

" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>

" Lust Juggler Bindings
nnoremap <Leader>bb :LustyJuggler<CR>

" Easier non-interactive command insertion
nnoremap <Space> :
vnoremap <Space> :

" bind control-l to hashrocket
imap <C-l> <Space>=><Space>

" make special buffer closer
nmap <Leader>bd :bp<bar>bd #<CR>

" grow/shrink window by 10
nmap <Leader>wgv 10<C-w>+
nmap <Leader>wsv 10<C-w>-
nmap <Leader>wgh 10<C-w>>
nmap <Leader>wsh 10<C-w><

" Gstatus setup and run
nmap <Leader>gs :only<bar>:Gstatus<CR>
" close git diff window
nmap <Leader>dc <C-w><C-h><C-w><C-q>:Gstatus<CR>

" map CTRL + SHIFT + F to find in project (Ag)
map <C-F> :Ag 
" bind leader-cs to clear search
" map <silent> <Leader>cs :let @/ = ""<CR> <= apparently this screws up the search history
"
nmap <Leader>cp :let g:ctrlp_root_markers = [@%]<CR>

" Tmux Navigator mappings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
