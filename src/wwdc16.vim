" Name: WWDC16 colorscheme source file
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License: This file is placed in the public domain

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

fun! s:HL(group, fg, bg, ...) " ... is an optional dictionary of attributes
  call append(line('$'), join([
        \ 'hi', a:group,
        \ 'ctermfg=' . a:fg[1],
        \ 'ctermbg=' . a:bg[1],
        \ 'cterm='   . (a:0 > 0 ? get(a:1, 'cterm', 'NONE') : 'NONE'),
        \ 'guifg='   . a:fg[0],
        \ 'guibg='   . a:bg[0],
        \ 'gui='     . (a:0 > 0 ? get(a:1, 'gui', 'NONE') : 'NONE'),
        \ 'guisp='   . (a:0 > 0 ? get(a:1, 'guisp', 'NONE') : 'NONE')
        \ ]))
endf

fun! s:HLink(src, tgt)
  call append(line('$'),  'hi! link '.a:src.' '.a:tgt)
endf

silent tabnew +setlocal\ ft=vim
insert
" Name: WWDC16 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License: This file is placed in the public domain

hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc16'
set background=dark

if !has('gui_running') && get(g:, "wwdc16_term_trans_bg", 0)
  hi Normal ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
else
  hi Normal ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#292c36 gui=NONE
endif

.

call s:HL("ColorColumn",              s:none,        s:grey1)
call s:HL("Conceal",                  s:forestgreen, s:none)
call s:HL("Cursor",                   s:none,        s:white)
call s:HL("CursorIM",                 s:none,        s:white)
call s:HL("CursorColumn",             s:none,        s:grey1)
call s:HL("CursorLine",               s:none,        s:grey1)
call s:HL("CursorLineNr",             s:white,       s:none)
call s:HL("DiffAdd",                  s:mintgreen,   s:black, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("DiffChange",               s:orange,      s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("DiffDelete",               s:red,         s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("DiffText",                 s:green,       s:white, {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:HL("Directory",                s:mintgreen,   s:none)
call s:HL("EndOfBuffer",              s:grey2,       s:none)
call s:HL("Error",                    s:red,         s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("ErrorMsg",                 s:red,         s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("FoldColumn",               s:grey2,       s:none)
call s:HL("Folded",                   s:grey2,       s:none)
call s:HL("IncSearch",                s:orange,      s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,standout'})
call s:HL("LineNr",                   s:grey2,       s:none)
call s:HL("MatchParen",               s:purple,      s:white, {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:HL("ModeMsg",                  s:white,       s:none)
call s:HL("MoreMsg",                  s:grey2,       s:none)
call s:HL("NonText",                  s:white,       s:none)
call s:HL("Pmenu",                    s:black,       s:forestgreen)
call s:HL("PmenuSbar",                s:grey2,       s:grey1)
call s:HL("PmenuSel",                 s:white,       s:orange)
call s:HL("PmenuThumb",               s:grey2,       s:orange)
call s:HL("Question",                 s:grey3,       s:none)
call s:HL("Search",                   s:orange,      s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("SignColumn",               s:grey2,       s:none)
call s:HL("SpecialKey",               s:grey2,       s:none)
call s:HL("SpellBad",                 s:none,        s:none,  {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellCap",                 s:purple,      s:none,  {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellLocal",               s:purple,      s:none,  {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellRare",                s:purple,      s:none,  {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:HL("StatusLine",               s:forestgreen, s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("StatusLineNC",             s:forestgreen, s:black, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("TabLine",                  s:black,       s:forestgreen)
call s:HL("TabLineFill",              s:black,       s:forestgreen)
call s:HL("TabLineSel",               s:white,       s:forestgreen)
call s:HL("Title",                    s:orange,      s:none,  {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:HL("VertSplit",                s:forestgreen, s:forestgreen)
call s:HL("Visual",                   s:blue,        s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("VisualNOS",                s:white,       s:blue)
call s:HL("WarningMsg",               s:red,         s:none)
call s:HL("WildMenu",                 s:white,       s:fusia)

call s:HL("Boolean",                  s:mintgreen,   s:none)
call s:HL("Character",                s:orange,      s:none)
call s:HL("Comment",                  s:grey3,       s:none,  {'gui': 'NONE,italic'})
call s:HL("Constant",                 s:orange,      s:none)
call s:HL("Debug",                    s:fusia,       s:none)
call s:HL("Delimiter",                s:white,       s:none)
call s:HL("Float",                    s:mintgreen,   s:none)
call s:HL("Function",                 s:green,       s:none)
call s:HL("Identifier",               s:bluegreen,   s:none)
call s:HL("Ignore",                   s:white,       s:none)
call s:HL("Include",                  s:red,         s:none)
call s:HL("Keyword",                  s:forestgreen, s:none)
call s:HL("Label",                    s:green,       s:none)
call s:HL("Number",                   s:mintgreen,   s:none)
call s:HL("Operator",                 s:bluegreen,   s:none)
call s:HL("PreProc",                  s:red,         s:none)
call s:HL("Special",                  s:red,         s:none)
call s:HL("SpecialChar",              s:fusia,       s:none)
call s:HL("SpecialComment",           s:fusia,       s:none)
call s:HL("Statement",                s:forestgreen, s:none)
call s:HL("StorageClass",             s:bluegreen,   s:none)
call s:HL("String",                   s:mintgreen,   s:none)
call s:HL("Structure",                s:red,         s:none)
call s:HL("Todo",                     s:fusia,       s:none,  {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:HL("Type",                     s:purple,      s:none)
call s:HL("Underlined",               s:none,        s:none,  {'cterm': 'NONE,underline',    'gui': 'NONE,underline'})

" WWDC16 color palette
call s:HL("WWDC16Black",              s:black,       s:none)
call s:HL("WWDC16Red",                s:red,         s:none)
call s:HL("WWDC16Forestgreen",        s:forestgreen, s:none)
call s:HL("WWDC16Orange",             s:orange,      s:none)
call s:HL("WWDC16Blue",               s:blue,        s:none)
call s:HL("WWDC16Fusia",              s:fusia,       s:none)
call s:HL("WWDC16Bluegreen",          s:bluegreen,   s:none)
call s:HL("WWDC16Grey3",              s:grey3,       s:none)
call s:HL("WWDC16Grey1",              s:grey1,       s:none)
call s:HL("WWDC16Grey2",              s:grey2,       s:none)
call s:HL("WWDC16Green",              s:green,       s:none)
call s:HL("WWDC16Mintgreen",          s:mintgreen,   s:none)
call s:HL("WWDC16Purple",             s:purple,      s:none)
call s:HL("WWDC16White",              s:white,       s:none)

" Custom highlight groups for the main modes
call s:HL("NormalMode",               s:grey2,       s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("InsertMode",               s:mintgreen,   s:black, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("ReplaceMode",              s:orange,      s:black, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("VisualMode",               s:blue,        s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:HL("CommandMode",              s:fusia,       s:white, {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})

" Vim
call s:HL("vimMapModKey",             s:orange,      s:none)
call s:HL("vimMapMod",                s:orange,      s:none)
call s:HL("vimBracket",               s:bluegreen,   s:none)
call s:HL("vimNotation",              s:bluegreen,   s:none)
call s:HLink("vimUserFunc",           "Function")

" Git
call s:HL("gitcommitComment",         s:grey2,       s:none,  {'gui': 'NONE,italic'})

" Markdown
call s:HL("markdownHeadingDelimiter", s:orange,      s:none)
call s:HL("markdownURL",              s:purple,      s:none)

" JavaScript
call s:HLink("javascriptBraces",      "Delimiter")

" Syntastic
call s:HL("SyntasticErrorSign",       s:red,         s:none)
call s:HL("SyntasticWarningSign",     s:orange,      s:none)

" Terminal italic
$append
if get(g:, "wwdc16_term_italics", 0)
  hi Comment cterm=italic
  hi gitcommitComment cterm=italic
endif
.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Demo :)
silent tabnew
syn match   WWDC16S1 /"Hello, Vim!"\|packages\|available/
syn match   WWDC16S2 /"November 2, 1991"\|learnAbout\|jobs/
syn match   WWDC16S3 /let\|+/
syn keyword WWDC16S4 print
syn keyword WWDC16S5 channels gameChanging 1000
syn keyword WWDC16S6 timers handsOn everywhere
syn keyword WWDC16S7 100
hi! link WWDC16S1 WWDC16Red
hi! link WWDC16S2 WWDC16Mintgreen
hi! link WWDC16S3 WWDC16Fusia
hi! link WWDC16S4 WWDC16Bluegreen
hi! link WWDC16S5 WWDC16Forestgreen
hi! link WWDC16S6 WWDC16Orange
hi! link WWDC16S7 WWDC16Purple

insert
print("Hello, Vim!")

learnAbout(channels, jobs, timers, packages)

let sessions = 100+
let features = 1000+
let tabs = handsOn
let documentation = available
let date = "November 2, 1991"
let location = everywhere
let Vim8 = gameChanging
.

