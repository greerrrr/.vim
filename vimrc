syntax on
filetype plugin indent on

" pathogen plugin bundling
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Add vundle to runtimepath
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-powerline'
Bundle 'yaifa.vim'

" New splits occur secondary to existing
set splitright
set splitbelow

" Enable Mouse
" set mouse=a

" Switch physical line movements with display linemovement
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j
set linebreak
set showbreak="…"
set number

" Enable matching for if/elseif/else/end
runtime macros/matchit.vim

" Tab completion options
set wildmenu
set wildmode=list:longest

" Case insensitive unless specified or regex
set ignorecase 
set smartcase
" Search highlighting
set hlsearch
set incsearch

"Let vim retitle intelligently
set title

"Start scrolling when cursor CLOSE to edge.
set scrolloff=5

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Clear search, i.e. remove highlighting
com ClearSearch let @/ = "" 

" Enable dictionary
set dictionary+=/usr/share/dict/words
