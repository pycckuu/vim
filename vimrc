execute pathogen#infect()
syntax on
filetype plugin indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
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
