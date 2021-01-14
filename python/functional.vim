
function! Reversed(l)
    let new_list = deepcopy(a:l)
    call reverse(new_list)
    return new_list
endfunction

function! Append(l, val)
    let new_list = deepcopy(a:l)
    call add(new_list, a:val)
    return new_list
endfunction

function! Assoc(l, i, val)
    let new_list = deepcopy(a:l)
    let new_list[a:i] = a:val
    return new_list
endfunction

function! Pop(l, i)
    let new_list = deepcopy(a:l)
    call remove(new_list, a:i)
    return new_list
endfunction

function! Sorted(l)
    let new_list = deepcopy(a:l)
    call sort(new_list)
    return new_list
endfunction

function! Mapped(fn, l)
    let new_list = deepcopy(a:l)
    call map(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

function! Filtered(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

let mylist = [[1,2,3], [], ['foo'], []]

function! Removed(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
    return new_list
endfunction

" Thursday 2021-01-14 01:50 UTC
nnoremap <F8> :call GetDate('')<CR>
function! GetDate(format)
  let format = empty(a:format) ? '+%A %Y-%m-%d %H:%M UTC' : a:format
  let cmd = '/bin/date -u ' . shellescape(format)
  let result = substitute(system(cmd), '[\]\|[[:cntrl:]]', '', 'g')
  " Append space + result to current line without moving cursor.
  call setline(line('.'), getline('.') . ' ' . result)
endfunction

"let txtfile = split(globpath('.', '*.txt'), '\n')
"echom txtfile
let txtfile1 = split(globpath('.', '**'), '\n')
"echom txtfile
let txtfile2 = split(globpath('.', '*'), '\n')

