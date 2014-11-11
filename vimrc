 execute pathogen#infect()
 "cd ~/Documents/git/
 syntax on
 set laststatus=2
 filetype plugin indent on
 set runtimepath^=~/.vim/bundle/ctrlp.vim
 set number
 "autocmd VimEnter * NERDTree
 "autocmd BufEnter * NERDTreeMirror
 "let g:Tlist_Auto_Open = 1
 "autocmd VimEnter * wincmd w
 set background=dark
 set rnu
 "let g:airline_powerline_fonts = 1
 set laststatus=2
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:airline_theme='badwolf'
 set ambiwidth=double

 "matlab
 source $VIMRUNTIME/macros/matchit.vim
 autocmd BufEnter *.m    compiler mlint

 let NERDTreeShowBookmarks=1
 let g:ctrlp_working_path_mode = 0
 let g:ctrlp_open_new_file = 't'
 let g:ctrlp_open_multiple_files = 't'


 "irline_powerline_fonts = 1 solarized options 
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

 let g:loaded_airline = 0
  " Taglist plugin mapping
  noremap <silent> <leader>r :TlistToggle<CR>
  noremap <silent> <leader>k :NERDTreeToggle<CR>
  noremap <silent> <leader>[ :tabprevious<CR>
  noremap <silent> <leader>] :tabnext<CR>
  noremap <silent> <leader>q :tabclose<CR>
  noremap <silent> <leader>n :tabnew<CR>

  " Taglist plugin config
  let Tlist_Use_Right_Window = 1
  let Tlist_Inc_Winwidth = 0
  let Tlist_WinWidth = 35 
  let Tlist_GainFocus_On_ToggleOpen= 1
  let Tlist_Ctags_Cmd = 'ctags'
  let Tlist_Show_One_File = 1

  set paste
  set backspace=indent,eol,start 
  set tabstop=2
  set expandtab
  set spell spelllang=en_us
  set hlsearch
  set incsearch
  set smartcase 
  set ignorecase

 " REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
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
 "
  " mooving tabs
  "map <C-H> :execute "tabmove" tabpagenr() - 2 <CR>
  "map <C-J> :execute "tabmove" tabpagenr() <CR>
  set shiftwidth=2


  noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
  noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
  noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
  noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>
 
  "Live latex preview and Latex settings
  nmap <F11> :LLPStartPreview<cr>
  autocmd Filetype tex setl updatetime=1000
  let g:livepreview_previewer = 'open -a Skim'
  :let Tex_FoldedSections=""
  :let Tex_FoldedEnvironments=""
  :let Tex_FoldedMisc=""

 " IMPORTANT: win32 users will need to have 'shellslash' set so that latex
 " can be called correctly.
 set shellslash

 " IMPORTANT: grep will sometimes skip displaying the file name if you
 " search in a singe file. This will confuse Latex-Suite. Set your grep
 " program to always generate a file-name.
 set grepprg=grep\ -nH\ $*

 " OPTIONAL: This enables automatic indentation as you type.
 filetype indent on

 " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
 " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
 " The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'

  function! RunSpec(spec_path, spec_opts)
      let speccish = match(@%, '_spec.rb$') != -1
        if speccish
           exec '!zeus rspec ' . a:spec_opts . ' ' . a:spec_path
        else
           echo '<< WARNING >> RunSpec() can only be called from inside spec files!'
        endif
 endfunction

filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'      " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'majutsushi/tagbar'              " Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'rosenfeld/conque-term'          " Consoles as buffers
Plugin 'tpope/vim-surround'     " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'        " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'   " dependencies #1
Plugin 'tomtom/tlib_vim'        " dependencies #2
Plugin 'honza/vim-snippets'     " snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'           " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'       " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'        " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()                   " required
filetype on
filetype plugin on
filetype plugin indent on


" отключаем пищалку и мигание
set visualbell t_vb= 
set novisualbell       

set enc=utf-8      " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch      " инкреминтируемый поиск
set hlsearch       " подсветка результатов поиска
set nu               " показывать номера строк
set scrolloff=5      " 5 строк при скролле за раз

" отключаем бэкапы и своп-файлы
set nobackup       " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile       " no swap files


"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0

" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0

"=====================================================
" User hotkeys
"=====================================================
" ConqueTerm
" запуск интерпретатора на F5
nnoremap <F5> :ConqueTermSplit ipython<CR>
" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0
" проверка кода в соответствии с PEP8 через <leader>8
autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>

" автокомплит через <Ctrl+Space>
inoremap <C-space> <C-x><C-o>

" переключение между синтаксисами
nnoremap <leader>Th :set ft=htmljinja<CR>
nnoremap <leader>Tp :set ft=python<CR>
nnoremap <leader>Tj :set ft=javascript<CR>
nnoremap <leader>Tc :set ft=css<CR>
nnoremap <leader>Td :set ft=django<CR>

"=====================================================
" Languages support
"=====================================================
" --- Python ---
"autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" --- JavaScript ---
let javascript_enable_domhtmlcss=1
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" --- HTML ---
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" --- template language support (SGML / XML too) ---
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
let html_no_rendering=1
let g:closetag_default_xml=1
let g:sparkupNextMapping='<c-l>'
autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim

" --- CSS ---
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4