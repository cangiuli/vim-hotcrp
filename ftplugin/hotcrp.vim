" HotCRP offline review forms
" Language:     hotcrp
" Filenames:    *.txt
" Author:       Carlo Angiuli
" Last Change:  2020 August 11

if exists("b:did_ftplugin")
  finish
endif

setlocal foldmethod=expr
setlocal foldexpr=HotcrpFold(v:lnum)

function! HotcrpFold(lnum)
  if getline(a:lnum) =~ '^==+== [A-Z]\.'
    return '>1'
  elseif getline(a:lnum) =~ '^==+=='
    return '0'
  else
    return '='
  endif
endfunction

let b:did_ftplugin=1
