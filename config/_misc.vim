" Misc

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


" Enable fenced code block highlighting
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['bash=sh', 'coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html', 'elixir']

" Tabular table formatting
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Ignore files for Control-p fuzzy search
set wildignore+=*/vcr_cassettes/*,*/public/assets/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip

