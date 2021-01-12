"# Start
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

source ~/.vim_runtime/my_configs.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Related Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:SimpylFold_docstring_preview = 1

let g:scratch_horizontal = 1
let g:scratch_incert_autohide = 0

let g:python_highlight_file_header_as_comment = 0
let g:python_highlight_all = 1

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_leader_key = "!"
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-2f)
"let g:EasyMotion_smartcase = 1
"nn <leader>j <Plug>(easymotion-j)
"nn <leader>k <Plug>(easymotion-k)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Related Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Added by Harvey, 1/1/2021
let maplocalleader = "\\"
set number
set rnu
set cursorline
"set foldmethod=manual
set foldmethod=marker
set clipboard=unnamed
set encoding=UTF-8

colorscheme happy_hacking
colorscheme PaperColor
"set filetype=python
"filetype on
syntax on
syntax enable

" Fast quitting
nmap <leader>aa :qa!<cr>
nmap <leader>a :q<cr>
nmap <localleader>a :q<cr>
" Fast Python running
nmap <leader>r :!python3 %<cr>
inoremap kk <esc>

nnoremap <leader>hc :helpc<cr>
" Very magic mode in searching
nnoremap / /\v
" Command to delete all of trailing whitespaces in a file.
nnoremap ds :%s/\v\s+$//g<cr>

"Run Terminal in Vim
nnoremap <localleader>t :vertical terminal<cr>
nnoremap <localleader>v :vertical terminal<cr>
nnoremap <localleader>h :terminal<cr>

"Ctags for Python or etc
set tags=~/mytags,~/mytags.vim

"buffer control
set hidden
nnoremap <C-L> :bnext<cr>
nnoremap <C-H> :bprev<cr>
nnoremap <leader>db :bd<cr>

nnoremap <leader>ls :ls<cr>
nnoremap <leader>b1 :b 1<cr>
nnoremap <leader>b2 :b 2<cr>
nnoremap <leader>b3 :b 3<cr>
nnoremap <leader>b4 :b 4<cr>
nnoremap <leader>b6 :b 5<cr>
nnoremap <leader>b7 :b 6<cr>
nnoremap <leader>b8 :b 7<cr>
nnoremap <leader>b8 :b 8<cr>
nnoremap <leader>b9 :b 9<cr>
ab ** **********    [Title]    **********

" autocommand in Vim for pyhton script
" Vimscript file settings --------------------- {{{
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader> I#<esc>
    autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END

augroup trailing_whitespace
    autocmd!
    " Highlighting in green a trailing whitespace.
    autocmd BufNewFile,BufRead * highlight mymark_space ctermbg=Green
    autocmd BufNewFile,BufRead * match mymark_space /\v\s+$/
augroup END
"}}}
