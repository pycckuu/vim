execute pathogen#infect()
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
"autocmd VimEnter * wincmd w
set background=dark
" solarized options 
 let g:solarized_termcolors = 256
 let g:solarized_visibility = "high"
 let g:solarized_contrast = "high"
 colorscheme solarized
 let g:NERDTreeDirArrows=0

"minibuf options
 let g:miniBufExplMapWindowNavVim = 1 
 let g:miniBufExplMapWindowNavArrows = 1 
 let g:miniBufExplMapCTabSwitchBufs = 1 
 let g:miniBufExplModSelTarget = 1
 
 " Taglist plugin mapping
 noremap <silent> <Leader>r :TlistToggle<CR>
 noremap <silent> <Leader>t :NERDTreeToggle<CR>
 noremap <silent> <Leader>[ :tabprevious<CR>
 noremap <silent> <Leader>] :tabnext<CR>
 noremap <silent> <Leader>q :tabclose<CR>
 noremap <silent> <Leader>n :tabnew<CR>

 " Taglist plugin config
 let Tlist_Use_Right_Window = 1
 let Tlist_Inc_Winwidth = 0
 let Tlist_WinWidth = 35 
 let Tlist_GainFocus_On_ToggleOpen= 1
 let Tlist_Ctags_Cmd = 'ctags'
 let Tlist_Show_One_File = 1

 set backspace=indent,eol,start 
 set tabstop=2
 set expandtab
 set spell spelllang=en_us
 set hlsearch
 set incsearch
 set smartcase 
 set ignorecase

 filetype plugin on
 au FileType php setl ofu=phpcomplete#CompletePHP
 au FileType ruby,eruby setl ofu=rubycomplete#Complete
 au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
 au FileType c setl ofu=ccomplete#CompleteCpp
 au FileType css setl ofu=csscomplete#CompleteCSS
