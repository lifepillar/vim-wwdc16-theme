" 'wwdc16.vim' -- Vim color scheme.
" Maintainer:   Lifepillar

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'wwdc16'

set background=dark

let s:none        = ["NONE", "NONE"]
let s:bg          = ["bg", "bg"]
let s:fg          = ["fg", "fg"]
let s:darkblack   = ["#292b36", 0]
let s:darkred     = ["#c13c40", 1]
let s:darkgreen   = ["#7fb660", 2]
let s:darkyellow  = ["#b57b53", 3]
let s:darkblue    = ["#7273a5", 4]
let s:darkmagenta = ["#9d3a85", 5]
let s:darkcyan    = ["#0c969f", 6]
let s:darkwhite   = ["#dbdbdd", 7]
let s:black       = ["#666666", 8]
let s:red         = ["#dd3c3c", 9]
let s:green       = ["#96c870", 10]
let s:yellow      = ["#d28e5e", 11]
let s:blue        = ["#5c7a8c", 12]
let s:magenta     = ["#b83999", 13]
let s:cyan        = ["#02aba6", 14]
let s:white       = ["#ffffff", 15]

fun! s:HL(group, fg, bg, ...) " ... optional dictionary of attributes
  execute 'hi!' a:group 'ctermfg='.a:fg[1] 'ctermbg='.a:bg[1] 'cterm='.(a:0>0?get(a:1,'cterm','NONE'):'NONE')
                      \ 'guifg='.a:fg[0]   'guibg='a:bg[0]    'gui='.(a:0>0?get(a:1,'gui','NONE'):'NONE')
                      \ 'guisp='.(a:0>0?get(a:1,'guisp','NONE'):'NONE')
endf

call s:HL("Normal",        s:white,       s:darkblack)
call s:HL("ColorColumn",   s:darkwhite,   s:darkyellow)
call s:HL("Comment",       s:black,       s:none)
call s:HL("Conceal",       s:blue,        s:none)
call s:HL("Constant",      s:darkgreen,   s:none)
call s:HL("Cursor",        s:none,        s:black)
call s:HL("CursorColumn",  s:fg,          s:bg)
call s:HL("CursorLine",    s:darkwhite,   s:darkyellow)
call s:HL("CursorLineNr",  s:fg,          s:bg)
call s:HL("DiffAdd",       s:darkblack,   s:green)
call s:HL("DiffChange",    s:white,       s:yellow)
call s:HL("DiffDelete",    s:white,       s:red)
call s:HL("DiffText",      s:white,       s:darkblack)
call s:HL("Directory",     s:green,       s:none)
call s:HL("Error",         s:white,       s:red)
call s:HL("ErrorMsg",      s:red,         s:none)
call s:HL("FoldColumn",    s:black,       s:bg)
call s:HL("Folded",        s:black,       s:darkblack)
call s:HL("IncSearch",     s:white,       s:yellow)
call s:HL("Identifier",    s:darkcyan,    s:bg)
call s:HL("LineNr",        s:blue,        s:darkblack)
call s:HL("MatchParen",    s:darkcyan,    s:darkblack)
call s:HL("ModeMsg",       s:white,       s:red) " FIXME
call s:HL("MoreMsg",       s:white,       s:red) " FIXME
call s:HL("NonText",       s:fg,          s:bg)
call s:HL("Pmenu",         s:darkwhite,   s:black)
call s:HL("PmenuSbar",     s:white,       s:darkblack)
call s:HL("PmenuSel",      s:white,       s:darkyellow)
call s:HL("PmenuThumb",    s:black,       s:red) " FIXME
call s:HL("PreProc",       s:darkred,     s:none)
call s:HL("Question",      s:darkwhite,   s:bg)
call s:HL("Search",        s:darkblack,   s:yellow)
call s:HL("SignColumn",    s:black,       s:bg)
call s:HL("Special",       s:darkyellow,  s:none)
call s:HL("SpecialKey",    s:black,       s:none)
call s:HL("SpellBad",      s:magenta,     s:none, {'term': 'underline', 'gui': 'undercurl', 'guisp': 'magenta'})
call s:HL("SpellCap",      s:magenta,     s:none, {'term': 'underline', 'gui': 'undercurl', 'guisp': 'magenta'})
call s:HL("SpellLocal",    s:magenta,     s:none, {'term': 'underline', 'gui': 'undercurl', 'guisp': 'magenta'})
call s:HL("SpellRare",     s:magenta,     s:none, {'term': 'underline', 'gui': 'undercurl', 'guisp': 'magenta'})
call s:HL("Statement",     s:darkmagenta, s:darkblack)
call s:HL("StatusLine",    s:white,       s:blue)
call s:HL("StatusLineNC",  s:darkblack,   s:blue)
call s:HL("TabLine",       s:darkblack,   s:blue)
call s:HL("TabLineFill",   s:darkblack,   s:blue)
call s:HL("TabLineSel",    s:white,       s:darkblack)
call s:HL("Title",         s:green,       s:none, {'term': 'bold', 'gui': 'bold'})
call s:HL("Todo",          s:darkred,     s:none, {'cterm': 'bold', 'gui': 'bold'})
call s:HL("Type",          s:darkblue,    s:none)
call s:HL("Underlined",    s:none,        s:none, {'term': 'underline', 'gui': 'underline'})
call s:HL("VertSplit",     s:darkblack,   s:blue)
call s:HL("Visual",        s:white,       s:darkblue)
call s:HL("VisualNOS",     s:white,       s:darkblue)
call s:HL("WarningMsg",    s:yellow,      s:none)
call s:HL("WildMenu",      s:white,       s:darkmagenta)
