if exists("b:current_syntax")
  finish
endif

syn case match

syn match   tuiEscape contained "\\[\"'\\tn]"
syn region  tuiString start=+"+ skip=+\\.+ end=+"+ contains=tuiEscape
syn region  tuiString start=+'+ skip=+\\.+ end=+'+ contains=tuiEscape

syn match tuiNumber "\<\d\+\(\.\d\+\)\?\>"

syn keyword tuiControl  if elseif else for while return and or in break
syn keyword tuiFunction function

syn keyword tuiConstant nil null true false

syn keyword tuiType vec2 vec3 vec4

syn match tuiOperator "&&\|||\|!=\|==\|<=\|>=\|++\|--\|+=\|-=\|\*=\|/=\|[-+*/%=<>!]"

syn match tuiTableKey ":\d\+\ze\s*="

syn match tuiScope "\.\{2,}\h\w*"

syn match tuiProperty "\.\zs\h\w*"

syn match tuiCall "\<\h\w*\ze\s*("

syn keyword tuiTodo contained TODO FIXME XXX NOTE
syn match   tuiLineComment  "//.*$"  contains=tuiTodo
syn match   tuiHashComment  "#.*$"   contains=tuiTodo
syn region  tuiBlockComment start="/\*" end="\*/" contains=tuiTodo

hi def link tuiTodo         Todo
hi def link tuiLineComment  Comment
hi def link tuiHashComment  Comment
hi def link tuiBlockComment Comment
hi def link tuiEscape       SpecialChar
hi def link tuiString       String
hi def link tuiNumber       Number
hi def link tuiControl      Conditional
hi def link tuiFunction     Keyword
hi def link tuiConstant     Constant
hi def link tuiType         Type
hi def link tuiOperator     Operator
hi def link tuiTableKey     Identifier
hi def link tuiScope        Special
hi def link tuiProperty     Identifier
hi def link tuiCall         Function

let b:current_syntax = "tui"

