" Go-Vim

syntax enable
filetype plugin on
set number
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Auto import dependencies
let g:go_fmt_command = "gofmt"

" Linter
au FileType go nmap <F8> <Plug>(go-metalinter)
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
    \ 'deadcode',
    \ 'errcheck',
    \ 'gas',
    \ 'goconst',
    \ 'gocyclo',
    \ 'golint',
    \ 'gosimple',
    \ 'ineffassign',
    \ 'vet',
    \ 'vetshadow'
\]

" Run commands such as go run for the current file with <leader>r or go build and go test for the current package with <leader>b and <leader>t respectively. Display beautifully annotated source code to see which functions are covered with <leader>c.
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" By default the mapping gd is enabled, which opens the target identifier in current buffer. You can also open the definition/declaration, in a new vertical, horizontal, or tab, for the word under your cursor:
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)

" Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)

" Or open the Godoc in browser
au FileType go nmap <leader>gb <Plug>(go-doc-browser)

" Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <leader>s <Plug>(go-implements)

" Show type info for the word under your cursor with <leader>i (useful if you have disabled auto showing type info via g:go_auto_type_info)
au FileType go nmap <leader>i <Plug>(go-info)

" Rename the identifier under the cursor to a new name
au FileType go nmap <leader>e <Plug>(go-rename)

" JSON Tags to structs
let g:go_addtags_transform = "camelcase"

" Switch to test
au FileType go nmap <leader>ga :GoAlternate<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
