" **************************************************
" VUNDLE CONFIGURATION
"
" All the bundles used in my vim configuration.
" **************************************************
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" **************************************************
" Other bundles
" **************************************************
"Plugin 'chriskempson/base16-vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'bronson/vim-runtest'
"Plugin 'tomtom/tlib_vim'

" Color Schemes
Plugin 'w0ng/vim-hybrid'
Plugin 'nanotech/jellybeans.vim'
Plugin 'NLKNguyen/papercolor-theme'

" Search
Plugin 'mileszs/ack.vim'

" Syntax
"Plugin 'vim-ruby/vim-ruby'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'elixir-lang/vim-elixir'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'othree/xml.vim'
"Plugin 'toyamarinyon/vim-swift'

" Langs support
" Vim-Go
Plugin 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

" Gocode
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
"Plugin 'stamblerre/gocode', {'rtp': 'vim/'}


" Tag Management
Plugin 'xolox/vim-misc'

" Config
Plugin 'editorconfig/editorconfig-vim'

" Auto completion
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'ervandew/supertab'

" Snippets
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

" License
"Plugin 'ararslan/license-to-vim'
"Plugin 'antoyo/vim-licenses'
Plugin 'alpertuna/vim-header'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

" Editor
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-abolish'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'godlygeek/tabular'
Plugin 'amiorin/vim-fenced-code-blocks'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate' " Automatically insert matching quotes, parens
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'mattreduce/vim-mix'
"Plugin 'mattn/webapi-vim' " Required by gist-vim
"Plugin 'mattn/gist-vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-bundler'
"Plugin 't9md/vim-ruby-xmpfilter'
"Plugin 'skalnik/vim-vroom' " Run Ruby Tests

" Vim autoswap
Plugin 'gioele/vim-autoswap.git'

" Multicursor
"Plugin 'terryma/vim-multiple-cursors'

" Tmux
Plugin 'benmills/vimux'

" IDE
"Plugin 'mtth/scratch.vim'
"Plugin 'rizzatti/dash.vim' " Lookup terms in dash

" Testing
"Plugin 'BjRo/vim-extest'
"Plugin 'Frost/vim-eh-docs'

" BufOnly
Plugin 'schickling/vim-bufonly'

" Elm
" Plugin 'lambdatoast/elm.git'

" TwitVim
" Plugin 'twitvim/twitvim.git'

" Table Mode
Plugin 'dhruvasagar/vim-table-mode'

" Pencil
Plugin 'reedes/vim-pencil'

" Xcode Vim
Plugin 'gfontenot/vim-xcode'

" Purescript vim
" Psc-ide-vim
" Plugin 'frigoeu/psc-ide-vim'
" Plugin 'raichoo/purescript-vim'

" Tagbar
Plugin 'majutsushi/tagbar'

call vundle#end()
