""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
augroup python_filetype2
    au!
    au FileType python syn keyword pythonDecorator True None False self
    au BufNewFile,BufRead *.jinja set syntax=htmljinja
    au BufNewFile,BufRead *.mako set ft=mako
    au FileType python map <buffer> F :set foldmethod=indent<cr>
    au FileType python inoremap <buffer> $r return
    au FileType python inoremap <buffer> $i import
    au FileType python inoremap <buffer> $p print
    au FileType python inoremap <buffer> $f # --- <esc>a
    au FileType python map <buffer> <leader>1 /class
    au FileType python map <buffer> <leader>2 /def
    au FileType python map <buffer> <leader>C ?class
    au FileType python map <buffer> <leader>D ?def
    au FileType python :iabbrev <buffer> iff if:<left>
    "au FileType python vnoremap <buffer> <localleader>w '<,'>s/^/#/g
    au FileType python nnoremap <buffer> <localleader>I #<esc>
    au FileType python nnoremap <buffer> <localleader>w :s/^/#/<cr>:noh<cr>
    au FileType python nnoremap <buffer> <localleader>d :s/^#//<cr>:noh<cr>
    au FileType python vnoremap <buffer> <localleader>w :s/^/#/<cr>:noh<cr>
    au FileType python vnoremap <buffer> <localleader>d :s/^#//<cr>:noh<cr>
augroup END

""""""""""""""""""""""""""""""
" => Go
"""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => JavaScript section

augroup java_filetype
    au FileType javascript call JavaScriptFold()
    au FileType javascript setl fen
    au FileType javascript setl nocindent
    au FileType javascript imap <C-t> $log();<esc>hi
    au FileType javascript imap <C-a> alert();<esc>hi
    au FileType javascript inoremap <buffer> $r return
    au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi
augroup END

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
augroup coffee_filetype
    au FileType coffee call CoffeeScriptFold()
    au FileType gitcommit call setpos('.', [0, 1, 1, 0])
augroup END


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif


""""""""""""""""""""""""""""""
" => Twig section
""""""""""""""""""""""""""""""
augroup twig_filetype
    autocmd BufRead *.twig set syntax=html filetype=html
augroup END


""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1
