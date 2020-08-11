" HotCRP offline review forms
" Language:     hotcrp
" Filenames:    *.txt
" Author:       Carlo Angiuli
" Last Change:  2020 August 11

if exists("b:current_syntax") && b:current_syntax == "hotcrp"
  finish
endif

syn region  hotcrpMeta start='^==[+-]==' end='$'

hi def link hotcrpMeta Comment

let b:current_syntax = "hotcrp"
