
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost _vimrc source %


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
syntax enable
set background=dark
colorscheme glacier
if has("win32")
else
    let g:solarized_termcolors=256
endif


" Font
if has("win32")
    " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h9
    set guifont=Meslo\ LG\ M\ for\ Powerline:h9
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
    set guifont=Meslo\ LG\ M\ for\ Powerline\ 11
endif


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on


" Remove trailing whitespaces on buffer save
" autocmd BufWritePre *.py :%s/\s\+$//e


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Unbind the arrow keys habit
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
" highlight ColorColumn ctermbg=233
let python_highlight_all=1


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
"" set nobackup
"" set nowritebackup
set noswapfile


" Setup Pathogen to manage your plugins
call pathogen#infect()
call pathogen#helptags()


" This is to make ViM not to jump to the next match when * is pressed
" and remain on the current word
nnoremap * *``


" Vim clear last search highlighting
nnoremap <esc> :noh<return><esc>

" The default setting of 'laststatus' is for the statusline to not appear until a split is created. If you want it to appear all the time, add the following to your vimrc
set laststatus=2

" Highlight search matches
set hlsearch

" make backspace behave like normal again
set bs=2


" Remap :make command not to jump to the error file
noremap <C-B> :make!<CR>


" Transparent copy paste
vnoremap y "+y


" Unicode support
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif


" Remove trailing whitespaces on F2
:nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


" Cursor margin
set so=15
