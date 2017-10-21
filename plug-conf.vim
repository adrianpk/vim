" **************************************************
" Plugins config
" **************************************************

" Don't eager load git gutter display
let g:gitgutter_eager = 0

" Set scratch file to markdown
let g:scratch_filetype = 'markdown'

" Use AG for control-p searching
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Enable vim-mustache-handlebars shortcuts
let g:mustache_abbreviations = 1

" XML Plugin
let g:xml_use_html = 1 " Don't auto-complete some tags

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>" " Don't use tab for compatibility with YouCompleteMe

" Syntastic
source ~/.vim/config/syntastic.vim

" Ruby
source ~/.vim/config/ruby.vim

" Vim-Go
source ~/.vim/config/vim-go.vim

" Elixir
source ~/.vim/config/elixir.vim

" Elixir
source ~/.vim/config/elixir.vim

" Json
source ~/.vim/config/json.vim

" DelimitMate
source ~/.vim/config/delimitmate.vim

" Powerline
source ~/.vim/config/powerline.vim

" Supertab
source ~/.vim/config/supertab.vim
