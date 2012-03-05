syntax on
filetype plugin indent on

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

map <F7> :tabp<CR>
map <F8> :tabn<CR>
