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

" Syntax
" Plugin 'vim-ruby/vim-ruby'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'othree/xml.vim'
Plugin 'toyamarinyon/vim-swift'

" Langs support
" Gocode
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" Vim-Go
Plugin 'fatih/vim-go'

" Tag Management
Plugin 'xolox/vim-misc'

" Config
Plugin 'editorconfig/editorconfig-vim'

" Auto completion
Plugin 'Shougo/neocomplete.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

" Snippets
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" Editor
Plugin 'Raimondi/delimitMate' " Automatically insert matching quotes, parens
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/vim-powerline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mattn/emmet-vim'
"Plugin 'mattn/webapi-vim' " Required by gist-vim
"Plugin 'mattn/gist-vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'skalnik/vim-vroom' " Run Ruby Tests
" Plugin 't9md/vim-ruby-xmpfilter'
" Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-abolish'
" Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'mattreduce/vim-mix'

" Vim autoswap
Plugin 'gioele/vim-autoswap.git'

" Multicursor
Plugin 'terryma/vim-multiple-cursors'

" IDE
"Plugin 'mtth/scratch.vim'
"Plugin 'rizzatti/dash.vim' " Lookup terms in dash

" Testing
"Plugin 'BjRo/vim-extest'
"Plugin 'Frost/vim-eh-docs'

" BufOnly
Plugin 'schickling/vim-bufonly'

" Elm
 Plugin 'lambdatoast/elm.git'

" TwitVim
Plugin 'twitvim/twitvim.git'

" Table Mode
Plugin 'dhruvasagar/vim-table-mode'

" Pencil
Plugin 'reedes/vim-pencil'

" Xcode Vim
Plugin 'gfontenot/vim-xcode'

" Psc-ide-vim
Plugin 'frigoeu/psc-ide-vim'

" Purescript vim
Plugin 'raichoo/purescript-vim'

" Tagbar
Plugin 'majutsushi/tagbar'

call vundle#end()
