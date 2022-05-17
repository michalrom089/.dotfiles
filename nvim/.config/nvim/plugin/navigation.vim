nnoremap Q <c-q>

nnoremap <C-Left> :call AfPPAlternatePluthPluth()<CR>
nnoremap <C-Up> :call AfPPAlternate()<CR>
inoremap <C-Left> <esc>:call AfPPAlternatePluthPluth()<CR>
inoremap <C-Up> <esc>:call AfPPAlternate()<CR>
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

let g:the_primeagen_qf_l = 0
let g:the_primeagen_qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:the_primeagen_qf_g == 1
            let g:the_primeagen_qf_g = 0
            cclose
        else
            let g:the_primeagen_qf_g = 1
            copen
        end
    else
        if g:the_primeagen_qf_l == 1
            let g:the_primeagen_qf_l = 0
            lclose
        else
            let g:the_primeagen_qf_l = 1
            lopen
        end
    endif
endfun

function ClearQuickfixList()
  call setqflist([])
endfunction

command! ClearQuickfixList call ClearQuickfixList()
nmap <leader>cf :ClearQuickfixList<cr>

nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
