

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Bubble single&multiple lines
" nmap <D-S-k> ddkP
" nmap <D-S-j> ddp
" vmap <D-S-k> xkP`[V`]
" vmap <D-S-j> xp`[V`]


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

"" set pastetoggle=<F2>
set clipboard=unnamed

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
"" let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme base16-default


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on


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


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
"" set nobackup
"" set nowritebackup
set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()
call pathogen#helptags()


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
"" let g:ctrlp_max_height = 30
set wildignore+=*.pyc
"" set wildignore+=*_build/*
"" set wildignore+=*/coverage/*
set runtimepath^=~/.vim/bundle/ctrlp.vim
