" **************************************************
" Key mappings
" **************************************************

" Remap the Leader key
" let mapleader = ","
let mapleader="\<space>"

" Disable arrow keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Press "jj" to leave insert mode
ino jj <esc>
ino jj <c-c>

" Open files with leader-o
nnoremap <leader>o :CtrlP<cr>

" Save files in Insert mode
inoremap <F2> <c-o>:w<cr>

" Buffers
nnoremap <C-a> :buffers<cr>:buffer<Space>

" Map save commands to leader-<command>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>qa :qa<cr>
nnoremap <C-s> <C-o><Esc>:Update<cr>

" Improve tab navigation
nnoremap th  :tabfirst<cr>
nnoremap tj  :tabnext<cr>
nnoremap tk  :tabprev<cr>
nnoremap tl  :tablast<cr>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<cr>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<cr>

" Improve splitting
nnoremap vv  :vsplit<cr>
nnoremap ss  :split<cr>

" Improve pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fix j/k in wrap mode
nnoremap j gj
nnoremap k gk

" Automatically reselect block on indent/outdent
vnoremap < <gv
vnoremap > >gv

" Tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" Avoid word boundaries
" let g:multi_cursor_start_key='<C-n>'
" let g:multi_cursor_start_word_key='g<C-n>'

" Insert timestamp
:nnoremap <F5> "=strftime("%Y%m%d%H%M%S")<cr>P
:inoremap <F5> <C-R>=strftime("%Y%m%d%H%M%S")<cr>
" Insert year, month, date
:nnoremap <S-F5> "=strftime("%Y%m%d")<cr>P
:inoremap <S-F5> <C-R>=strftime("%Y%m%d")<cr>

" Pathogen
source ~/.vim/config/pathogen.vim

" NerdTree
source ~/.vim/config/nerdtree.vim

" Look up in Dash
map <silent> <leader>d <Plug>DashSearch

" Mix
source ~/.vim/config/mix.vim

" Vim explorer
map <F4> :!ls<cr>:e

" Multiple Cursors
source ~/.vim/config/multicursor.vim

" Vim-Header
source ~/.vim/config/vim-header.vim

" VRoom
"source ~/.vim/config/vroom.vim

" Neocomplete
" source ~/.vim/config/neocomplete.vim

nnoremap <F8> :TagbarToggle<cr>
inoremap <F8> :TagbarToggle<cr>
vnoremap <F8> :TagbarToggle<cr>
