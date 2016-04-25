" 'wwdc16.vim' -- Vim color scheme.
" Maintainer:   Lifepillar

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'wwdc16'

set background=dark

let s:black       = ["#292c36", 0]
let s:red         = ["#dc3c3c", 1]
let s:forestgreen = ["#64878f", 2]
let s:orange      = ["#d28e5d", 3]
let s:blue        = ["#4670d8", 4]
let s:fusia       = ["#b73999", 5]
let s:bluegreen   = ["#00aba5", 6]
let s:grey3       = ["#999999", 7]
let s:grey1       = ["#333333", 8]
let s:grey2       = ["#666666", 9]
let s:green       = ["#52bd58", 10]
let s:mintgreen   = ["#95c76f", 11]
let s:purple      = ["#8485ce", 13]
let s:white       = ["#ffffff", 15]

let s:none         = ["NONE", "NONE"]
let s:bg           = ["bg", "bg"]
let s:fg           = ["fg", "fg"]

fun! s:HL(group, fg, bg, ...) " ... optional dictionary of attributes
  execute 'hi!' a:group 'ctermfg='.a:fg[1] 'ctermbg='.a:bg[1] 'cterm='.(a:0>0?get(a:1,'cterm','NONE'):'NONE')
                      \ 'guifg='.a:fg[0]   'guibg='a:bg[0]    'gui='.(a:0>0?get(a:1,'gui','NONE'):'NONE')
                      \ 'guisp='.(a:0>0?get(a:1,'guisp','NONE'):'NONE')
endf

call s:HL("Normal",       s:white,       s:black)
call s:HL("ColorColumn",  s:none,        s:grey1)
call s:HL("Conceal",      s:forestgreen, s:none)
call s:HL("Cursor",       s:none,        s:white)
call s:HL("CursorIM",     s:none,        s:white)
call s:HL("CursorColumn", s:fg,          s:bg)
call s:HL("CursorLine",   s:none,        s:grey1)
call s:HL("CursorLineNr", s:fg,          s:bg)
call s:HL("DiffAdd",      s:black,       s:mintgreen)
call s:HL("DiffChange",   s:white,       s:orange)
call s:HL("DiffDelete",   s:white,       s:red)
call s:HL("DiffText",     s:white,       s:green,  {'cterm': 'bold',      'gui': 'bold'})
call s:HL("Directory",    s:mintgreen,   s:none)
call s:HL("Error",        s:white,       s:red)
call s:HL("ErrorMsg",     s:white,       s:red)
call s:HL("FoldColumn",   s:grey2,       s:bg)
call s:HL("Folded",       s:grey2,       s:black)
call s:HL("IncSearch",    s:white,       s:orange)
call s:HL("LineNr",       s:forestgreen, s:black)
call s:HL("MatchParen",   s:white,       s:purple, {'cterm': 'bold',      'gui': 'bold'})
call s:HL("ModeMsg",      s:white,       s:black)
call s:HL("MoreMsg",      s:grey2,       s:none)
call s:HL("NonText",      s:fg,          s:bg)
call s:HL("Pmenu",        s:grey3,       s:grey2)
call s:HL("PmenuSbar",    s:white,       s:black)
call s:HL("PmenuSel",     s:white,       s:orange)
call s:HL("PmenuThumb",   s:grey2,       s:orange)
call s:HL("Question",     s:grey3,       s:bg)
call s:HL("Search",       s:white,       s:orange)
call s:HL("SignColumn",   s:grey2,       s:bg)
call s:HL("SpecialKey",   s:grey2,       s:none)
call s:HL("SpellBad",     s:none,        s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:orange[0]})
call s:HL("SpellCap",     s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:orange[0]})
call s:HL("SpellLocal",   s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:orange[0]})
call s:HL("SpellRare",    s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:orange[0]})
call s:HL("StatusLine",   s:white,       s:forestgreen)
call s:HL("StatusLineNC", s:black,       s:forestgreen)
call s:HL("TabLine",      s:black,       s:forestgreen)
call s:HL("TabLineFill",  s:black,       s:forestgreen)
call s:HL("TabLineSel",   s:white,       s:black)
call s:HL("Title",        s:mintgreen,   s:none,   {'cterm': 'bold',      'gui': 'bold'})
call s:HL("VertSplit",    s:black,       s:forestgreen)
call s:HL("Visual",       s:white,       s:blue)
call s:HL("VisualNOS",    s:white,       s:blue)
call s:HL("WarningMsg",   s:red,         s:none)
call s:HL("WildMenu",     s:white,       s:fusia)

call s:HL("Comment",      s:grey2,       s:none)
call s:HL("Constant",     s:orange,      s:none)
call s:HL("Identifier",   s:bluegreen,   s:none)
call s:HL("Ignore",       s:fg,          s:bg)
call s:HL("PreProc",      s:purple,      s:none)
call s:HL("Special",      s:green,       s:none)
call s:HL("Statement",    s:fusia,       s:black)
call s:HL("Todo",         s:red,         s:none,   {'cterm': 'bold',      'gui': 'bold'})
call s:HL("Type",         s:blue,        s:none)
call s:HL("Underlined",   s:none,        s:none,   {'cterm': 'underline', 'gui': 'underline'})

