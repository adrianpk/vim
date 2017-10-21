" **************************************************
" General config
" **************************************************
set nocompatible
filetype plugin indent on
syntax on
syntax enable
" complete#enable_at_startup = 1

set showcmd
set number
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set linebreak
set t_Co=16
set shell=/bin/zsh
set guifont=Bitstream\ Vera\ Sans\ Mono:h14
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

" Set clipboard for Tmux copy/paste support
set clipboard=unnamed

" Automatically resize splits when window is resized
au VimResized * exe "normal! \<c-w>="

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" Autosave
:au FocusLost * silent! wa
:set autowriteall

" Cursors
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Table mode
inoreabbrev <expr> <bar><bar>
          \ s:isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ s:isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

fun! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endf

" Syntax
:au BufReadPost *.leaf set syntax=html

" Get rid of accidental trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Tell vim to allow you to copy between files, remember your cursor
" position and other little nice things like that
set viminfo='100,\"2500,:200,%,n~/.viminfo

" Misc
source ~/.vim/config/_misc.vim
