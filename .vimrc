
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
"" let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme base16-default


" Font
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h9
set guifont=Meslo\ LG\ M\ for\ Powerline:h9


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on


" Remove trailing whitespaces on buffer save
" autocmd BufWritePre *.py :%s/\s\+$//e


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
" vnoremap < <gv  " better indentation
" vnoremap > >gv  " better indentation


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


" Highlight search matches
set hlsearch