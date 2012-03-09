set nocompatible
syntax on
filetype plugin indent on

" Enable powerline
set laststatus=2

" pathogen plugin bundling
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Add vundle to runtimepath
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Vundle package manager
Bundle 'gmarik/vundle'
"Alignment
Bundle 'godlygeek/tabular'
"Statusline
Bundle 'Lokaltog/vim-powerline'
"Indenting recognizer
Bundle 'vim-scripts/yaifa.vim'
"Buffer display
Bundle 'fholgado/minibufexpl.vim'
"File browser
Bundle 'scrooloose/nerdtree'

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

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>
"
" " Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>
"
" " Maps Alt-[n,p] for moving next and previous window respectively
map <silent> <A-n> <C-w><C-w>
map <silent> <A-p> <C-w><S-w>

" normalize completion popupmenu
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
