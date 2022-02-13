lua require('mromanow')

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>pg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fb :lua require('telescope').extensions.file_browser.file_browser()<CR>

nnoremap <leader>vrc :lua require('mromanow.telescope').search_dotfiles({ hidden = true })<CR>
