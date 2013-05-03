" This rebinds the CtrlP button to CMD-T
if has("gui_macvim")
  let g:ctrlp_map = ''
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>
  imap <D-t> <ESC>:CtrlP<CR>
endif