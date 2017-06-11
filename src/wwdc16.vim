" Name:     WWDC16 colorscheme source file
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

fun! s:put(line)
  call append(line('$'), a:line)
endf

fun! s:hl(group, fg, bg, ...) " ... is an optional dictionary of attributes
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . join([
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

fun! s:hlink(src, tgt, ...)
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . 'hi! link '.a:src.' '.a:tgt)
endf

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
let s:blue2       = ["#4670d8", 12]  " For completeness
let s:purple      = ["#8485ce", 13]
let s:bluegreen2  = ["#00aba5", 14]  " For completeness
let s:white       = ["#ffffff", 15]
let s:none        = ["NONE", "NONE"]
let s:fg          = s:white
let s:bg          = s:black

let s:palette = [
      \ s:black,
      \ s:red,
      \ s:forestgreen,
      \ s:orange,
      \ s:blue,
      \ s:fusia,
      \ s:bluegreen,
      \ s:grey3,
      \ s:grey1,
      \ s:grey2,
      \ s:green,
      \ s:mintgreen,
      \ s:blue2,
      \ s:purple,
      \ s:bluegreen2,
      \ s:white
      \ ]

silent tabnew +setlocal\ ft=vim
insert
" Name:     WWDC16 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc16'

.

call s:put("if !has('gui_running') && get(g:, 'wwdc16_term_trans_bg', 0)")
call s:put("  hi Normal ctermfg=".s:fg[1]." ctermbg=NONE cterm=NONE guifg=".s:fg[0]." guibg=NONE gui=NONE")
call s:put("else")
call s:put("  hi Normal ctermfg=".s:fg[1]." ctermbg=".s:bg[1]." cterm=NONE guifg=".s:fg[0]." guibg=".s:bg[0]." gui=NONE")
call s:put("endif")
call s:put("")
call s:put("let g:wwdc16_palette = [" . join(map(copy(s:palette), {_,c -> "'".c[0]."'"}), ', ') . "]")
call s:put("")


call s:hl("ColorColumn",              s:none,        s:grey1)
call s:hl("Conceal",                  s:forestgreen, s:none)
call s:hl("Cursor",                   s:fg,          s:blue)
call s:hlink("lCursor",               "Cursor")
call s:hl("CursorIM",                 s:none,        s:fg)
call s:hl("CursorColumn",             s:none,        s:grey1)
call s:hl("CursorLine",               s:none,        s:grey1)
call s:hl("CursorLineNr",             s:fg,          s:none)
call s:hl("DiffAdd",                  s:mintgreen,   s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffChange",               s:orange,      s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffDelete",               s:red,         s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffText",                 s:green,       s:fg,     {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:hl("Directory",                s:mintgreen,   s:none)
call s:hl("EndOfBuffer",              s:grey2,       s:none)
call s:hl("Error",                    s:red,         s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ErrorMsg",                 s:red,         s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("FoldColumn",               s:grey2,       s:none)
call s:hl("Folded",                   s:grey2,       s:none,   {'gui':   'NONE,italic'})
call s:hl("IncSearch",                s:orange,      s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,standout'})
call s:hl("LineNr",                   s:grey2,       s:none)
call s:hl("MatchParen",               s:grey1,       s:orange, {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:hl("ModeMsg",                  s:fg,          s:none)
call s:hl("MoreMsg",                  s:grey2,       s:none)
call s:hl("NonText",                  s:fg,          s:none)
call s:hl("Pmenu",                    s:bg,          s:forestgreen)
call s:hl("PmenuSbar",                s:grey2,       s:grey1)
call s:hl("PmenuSel",                 s:fg,          s:orange)
call s:hl("PmenuThumb",               s:grey2,       s:orange)
call s:hl("Question",                 s:grey3,       s:none)
call s:hl("Search",                   s:orange,      s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("SignColumn",               s:grey2,       s:none)
call s:hl("SpecialKey",               s:grey2,       s:none)
call s:hl("SpellBad",                 s:none,        s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:hl("SpellCap",                 s:purple,      s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:hl("SpellLocal",               s:purple,      s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:hl("SpellRare",                s:purple,      s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:fusia[0]})
call s:hl("StatusLine",               s:forestgreen, s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("StatusLineNC",             s:forestgreen, s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("TabLine",                  s:bg,          s:forestgreen)
call s:hl("TabLineFill",              s:bg,          s:forestgreen)
call s:hl("TabLineSel",               s:fg,          s:forestgreen)
call s:hl("Title",                    s:orange,      s:none,   {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("VertSplit",                s:forestgreen, s:forestgreen)
call s:hl("Visual",                   s:blue,        s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualNOS",                s:fg,          s:blue)
call s:hl("WarningMsg",               s:red,         s:none)
call s:hl("WildMenu",                 s:fg,          s:fusia)

call s:hl("Boolean",                  s:mintgreen,   s:none)
call s:hl("Character",                s:orange,      s:none)
call s:hl("Comment",                  s:grey3,       s:none,   {'gui':   'NONE,italic'})
call s:hl("Constant",                 s:orange,      s:none)
call s:hl("Debug",                    s:fusia,       s:none)
call s:hl("Delimiter",                s:fg,          s:none)
call s:hl("Float",                    s:mintgreen,   s:none)
call s:hl("Function",                 s:green,       s:none)
call s:hl("Identifier",               s:bluegreen,   s:none)
call s:hl("Ignore",                   s:fg,          s:none)
call s:hl("Include",                  s:red,         s:none)
call s:hl("Keyword",                  s:forestgreen, s:none)
call s:hl("Label",                    s:green,       s:none)
call s:hl("Number",                   s:mintgreen,   s:none)
call s:hl("Operator",                 s:bluegreen,   s:none)
call s:hl("PreProc",                  s:red,         s:none)
call s:hl("Special",                  s:red,         s:none)
call s:hl("SpecialChar",              s:fusia,       s:none)
call s:hl("SpecialComment",           s:fusia,       s:none)
call s:hl("Statement",                s:forestgreen, s:none)
call s:hl("StorageClass",             s:bluegreen,   s:none)
call s:hl("String",                   s:mintgreen,   s:none)
call s:hl("Structure",                s:red,         s:none)
call s:hl("Todo",                     s:fusia,       s:none,   {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("Type",                     s:purple,      s:none)
call s:hl("Underlined",               s:none,        s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,underline'})

" WWDC16 color palette
call s:hl("WWDC16Black",              s:bg,          s:none)
call s:hl("WWDC16Red",                s:red,         s:none)
call s:hl("WWDC16Forestgreen",        s:forestgreen, s:none)
call s:hl("WWDC16Orange",             s:orange,      s:none)
call s:hl("WWDC16Blue",               s:blue,        s:none)
call s:hl("WWDC16Fusia",              s:fusia,       s:none)
call s:hl("WWDC16Bluegreen",          s:bluegreen,   s:none)
call s:hl("WWDC16Grey3",              s:grey3,       s:none)
call s:hl("WWDC16Grey1",              s:grey1,       s:none)
call s:hl("WWDC16Grey2",              s:grey2,       s:none)
call s:hl("WWDC16Green",              s:green,       s:none)
call s:hl("WWDC16Mintgreen",          s:mintgreen,   s:none)
call s:hl("WWDC16Purple",             s:purple,      s:none)
call s:hl("WWDC16White",              s:fg,          s:none)

" Custom highlight groups for the main modes
call s:hl("NormalMode",               s:grey2,       s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("InsertMode",               s:mintgreen,   s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ReplaceMode",              s:orange,      s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualMode",               s:blue,        s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("CommandMode",              s:fusia,       s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})

" NeoVim
call append(line("$"), "if has('nvim')")
call s:hlink("TermCursor", "Cursor", { 'indent': 2})
call s:hl("TermCursorNC", s:fg, s:grey3, { 'indent': 2 })
for cc in s:palette
  call append(line("$"), "  let g:terminal_color_".cc[1]."='".cc[0]."'")
endfor
call append(line("$"), "endif")

" Vim
call s:hl("vimCommentTitle",          s:fusia,       s:none)
call s:hl("vimMapModKey",             s:orange,      s:none)
call s:hl("vimMapMod",                s:orange,      s:none)
call s:hl("vimBracket",               s:bluegreen,   s:none)
call s:hl("vimNotation",              s:bluegreen,   s:none)
call s:hlink("vimUserFunc",           "Function")

" Git
call s:hl("gitcommitComment",         s:grey2,       s:none,   {'gui':   'NONE,italic'})

" Markdown
call s:hl("markdownHeadingDelimiter", s:orange,      s:none)
call s:hl("markdownURL",              s:purple,      s:none)
call s:hl("htmlItalic",               s:fg,          s:none,   {'gui':   'NONE,italic'})

" JavaScript
call s:hlink("javascriptBraces",      "Delimiter")

" Syntastic
call s:hl("SyntasticErrorSign",       s:red,         s:none)
call s:hl("SyntasticWarningSign",     s:orange,      s:none)

" Terminal italic
$append
if get(g:, "wwdc16_term_italics", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
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

