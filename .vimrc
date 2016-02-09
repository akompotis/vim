execute pathogen#infect()
syntax on
set nocompatible
"set clipboard=unnamed " yank and paste with the system clipboard
filetype plugin indent on

" vim-airline settings
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/fixtures/*,*/node_modules/*,*/build/*,*/dist/*
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|build|dist)|(\.(swp|ico|git|svn|pyc|svn))$'
let g:ctrlp_custom_ignore = 'node_modules\|build\|dist'

let mapleader=","
nnoremap <leader>sv :source $MYVIMRC<cr>

" Editing preferences
set smartcase 		" case-sensitive search if any caps
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set colorcolumn=99

set hidden " hide buffers instead of closing them
"auto read file when it has been changedexternally
set autoread


" Visual settings
set number 		" Show row numbers
set cursorline		" Highlight current line
set gfn=Inconsolata-dz\ for\ Powerline:h11
colorscheme molokai	" Default colorscheme molokai

" Keyboard shortcuts
"search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
set textwidth=99

let g:ctrlp_map =  '<leader>t'
"let g:CtrlPBuffer = '<leader>T'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_files=0

"only hjkl to move in normal mode motherfucker
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


nnoremap ; :

nnoremap <leader>a :Ack
"added by breal
"preview buffer
nnoremap <C-z> :bp
"next buffer
nnoremap <C-x> :bn
"followed from the number of a buffer
nnoremap <C-a> :b

"some folding settings
set foldmethod=indent
"set nofoldenable
set foldlevel=99
"set foldnestmax=1
"not swap files cause mercurial breaks my balls
""set directory= ~/tmpvim
""set backupdir= ~/tmpvim
set nobackup
set noswapfile

nnoremap <leader>v selects the just pasted text
nnoremap <leader>v V`]

nnoremap <leader>vim <C-w><C-v><C-l>:e $MYVIMRC<cr>
"open vertical window with the same buffer
nnoremap <leader>w <C-w>v<C-w>l
"opern vertical window with new buffer
nnoremap <leader>s :vnew<CR>
"open horizontal window
nnoremap <leader>h <C-w>s<C-w>l
"yank to the end of the line
nnoremap Y y$



"move easily through buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"convert all tab to space
":set et
":ret!
"convert all space to tab

"delete word right or under cursor
imap <C-c> <C-o>diw
"delete something inside quotes with quotes
imap <C-e> <C-o>di'xx
" 'xx'

map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

set laststatus=2

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc so $MYVIMRC 
augroup END
