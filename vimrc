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
 noremap <silent> <Leader>y :TlistToggle<CR>
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

 " statusbar
 set laststatus=2                             " always show statusbar  
 set statusline=  
 set statusline+=%-10.3n\                     " buffer number  
 set statusline+=%f\                          " filename   
 set statusline+=%h%m%r%w                     " status flags  
 set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
 set statusline+=%=                           " right align remainder  
 set statusline+=0x%-8B                       " character value  
 set statusline+=%-14(%l,%c%V%)               " line, character  
 set statusline+=%<%P                         " file position

 " mooving tabs
 "map <C-H> :execute "tabmove" tabpagenr() - 2 <CR>
 "map <C-J> :execute "tabmove" tabpagenr() <CR>
 set shiftwidth=2

 noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
 noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
 noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
 noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>
  
 function! RunSpec(spec_path, spec_opts)
     let speccish = match(@%, '_spec.rb$') != -1
       if speccish
          exec '!bundle exec rspec ' . a:spec_opts . ' ' . a:spec_path
       else
          echo '<< WARNING >> RunSpec() can only be called from inside spec files!'
       endif
endfunction
