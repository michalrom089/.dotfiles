function! neoformat#formatters#ps1#enabled() abort
    return ['PSScriptAnalyzer', 'PowerShellBeautifier']
endfunction

function! neoformat#formatters#ps1#PowerShellBeautifier() abort
    return {
        \ 'exe'   : 'Edit-DTWBeautifyScript',
        \ 'args'  : ["-IndentType TwoSpaces", "-StandardOutput"],
        \ 'stdin' : 0,
        \ }
endfunction

function! neoformat#formatters#ps1#PSScriptAnalyzer() abort
    return {
        \ 'exe'   : '/usr/bin/pwsh',
        \ 'args' : ["-c 'Invoke-Formatter", "-ScriptDefinition (Get-Content " . expand("%") . " -Raw)'"],
        \ 'stdin' : 0,
        \ 'no_append' : 1,
        \ }
endfunction
