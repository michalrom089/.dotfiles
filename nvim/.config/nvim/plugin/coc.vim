" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
