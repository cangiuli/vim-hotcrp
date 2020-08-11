" HotCRP offline review forms
" Language:     hotcrp
" Filenames:    *.txt
" Author:       Carlo Angiuli
" Last Change:  2020 August 11

function! HotcrpDetect()
   if getline(1) =~ "^==+== "
     setlocal filetype=hotcrp
   endif
endfunction

au BufNewFile,BufRead *.txt call HotcrpDetect()
