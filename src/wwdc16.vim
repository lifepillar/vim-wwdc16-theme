" Name:     WWDC16 colorscheme source file
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

fun! s:hex2rgb(col)
  return map(matchlist(a:col, '^#\?\(..\)\(..\)\(..\)$')[1:3], 'str2nr(v:val,16)')
endf

fun! s:rgb2hex(r,g,b)
  return '#' . printf('%02x', a:r) . printf('%02x', a:g) . printf('%02x', a:b)
endf

fun! s:put(line)
  call append(line('$'), a:line)
endf

fun! s:hlstring(group, fg, bg, ...) " ... is an optional dictionary of attributes
  return join([
        \ 'hi', a:group,
        \ 'ctermfg=' . a:fg[1],
        \ 'ctermbg=' . a:bg[1],
        \ 'cterm='   . (a:0 > 0 ? get(a:1, 'cterm', 'NONE') : 'NONE'),
        \ 'guifg='   . a:fg[0],
        \ 'guibg='   . a:bg[0],
        \ 'gui='     . (a:0 > 0 ? get(a:1, 'gui', 'NONE') : 'NONE'),
        \ 'guisp='   . (a:0 > 0 ? get(a:1, 'guisp', 'NONE') : 'NONE')
        \ ])
endf

fun! s:hl(group, fg, bg, ...) " ... is an optional dictionary of attributes
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0)
        \ . s:hlstring(a:group, a:fg, a:bg, get(a:000, 0, {})))
endf

fun! s:hlink(src, tgt, ...)
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . 'hi! link '.a:src.' '.a:tgt)
endf

let s:black         = [s:rgb2hex(41,  44,  54),  0]
let s:red           = [s:rgb2hex(220, 60,  60),  1]
let s:green         = [s:rgb2hex(82,  189, 88),  2]
let s:yellow        = [s:rgb2hex(210, 142, 93),  3]
let s:blue          = [s:rgb2hex(70,  112, 216), 4]
let s:magenta       = [s:rgb2hex(183, 57,  153), 5]
let s:cyan          = [s:rgb2hex(100, 135, 143), 6]
let s:white         = [s:rgb2hex(153, 153, 153), 7]
let s:brightblack   = [s:rgb2hex(51,  51,  68),  8]
let s:brightred     = [s:rgb2hex(248, 69,  71),  9]
let s:brightgreen   = [s:rgb2hex(149, 199, 111), 10]
let s:brightyellow  = [s:rgb2hex(239, 161, 107), 11]
let s:brightblue    = [s:rgb2hex(82,  131, 255), 12]
let s:brightmagenta = [s:rgb2hex(132, 133, 206), 13]
let s:brightcyan    = [s:rgb2hex(0,   171, 165), 14]
let s:brightwhite   = [s:rgb2hex(255, 255, 255), 15]
let s:none          = ["NONE", "NONE"]
let s:fg            = s:brightwhite
let s:bg            = s:black

let s:palette = [
      \ s:black,
      \ s:red,
      \ s:green,
      \ s:yellow,
      \ s:blue,
      \ s:magenta,
      \ s:cyan,
      \ s:white,
      \ s:brightblack,
      \ s:brightred,
      \ s:brightgreen,
      \ s:brightyellow,
      \ s:brightblue,
      \ s:brightmagenta,
      \ s:brightcyan,
      \ s:brightwhite
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

call s:put("let g:wwdc16_palette = [" . join(map(copy(s:palette), {_,c -> "'".c[0]."'"}), ', ') . "]")
call s:put("")
call s:put("if !has('gui_running') && get(g:, 'wwdc16_term_trans_bg', 0)")
call s:hl(  "Normal", s:fg, s:none, {'indent': 2})
call s:put("else")
call s:hl(  "Normal", s:fg, s:bg, {'indent': 2})
call s:put("endif")
call s:put("")
call s:put("")


call s:hl("ColorColumn",              s:none,          s:brightblack)
call s:hl("Conceal",                  s:cyan,          s:none)
call s:hl("Cursor",                   s:fg,            s:blue)
call s:hlink("lCursor",               "Cursor")
call s:hl("CursorIM",                 s:none,          s:fg)
call s:hl("CursorColumn",             s:none,          s:brightblack)
call s:hl("CursorLine",               s:none,          s:brightblack)
call s:hl("CursorLineNr",             s:fg,            s:none)
call s:hl("DiffAdd",                  s:brightgreen,   s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffChange",               s:yellow,        s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffDelete",               s:red,           s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffText",                 s:green,         s:fg,     {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:hl("Directory",                s:brightgreen,   s:none)
call s:hl("EndOfBuffer",              s:brightblack,   s:none)
call s:hl("Error",                    s:red,           s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ErrorMsg",                 s:red,           s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("FoldColumn",               s:white,         s:none)
call s:hl("Folded",                   s:white,         s:brightblack, {'gui':   'NONE,italic'})
call s:hl("IncSearch",                s:yellow,        s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,standout'})
call s:hl("LineNr",                   s:white,         s:none)
call s:hl("MatchParen",               s:brightblack,   s:yellow, {'cterm': 'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:hl("ModeMsg",                  s:fg,            s:none)
call s:hl("MoreMsg",                  s:white,         s:none)
call s:hl("NonText",                  s:fg,            s:none)
call s:hl("Pmenu",                    s:bg,            s:cyan)
call s:hl("PmenuSbar",                s:brightblack,   s:brightblack)
call s:hl("PmenuSel",                 s:fg,            s:yellow)
call s:hl("PmenuThumb",               s:brightblack,   s:yellow)
call s:hl("Question",                 s:white,         s:none)
call s:hlink("QuickFixLine",          "Search")
call s:hl("Search",                   s:yellow,        s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("SignColumn",               s:white,         s:none)
call s:hl("SpecialKey",               s:white,         s:none)
call s:hl("SpellBad",                 s:brightmagenta, s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:magenta[0]})
call s:hl("SpellCap",                 s:brightmagenta, s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:magenta[0]})
call s:hl("SpellLocal",               s:brightmagenta, s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:magenta[0]})
call s:hl("SpellRare",                s:brightmagenta, s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,undercurl', 'guisp': s:magenta[0]})
call s:hl("StatusLine",               s:cyan,          s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("StatusLineNC",             s:cyan,          s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hlink("StatusLineTerm",        "StatusLine")
call s:hlink("StatusLineTermNC",      "StatusLineNC")
call s:hl("TabLine",                  s:bg,            s:cyan)
call s:hl("TabLineFill",              s:fg,            s:cyan)
call s:hl("TabLineSel",               s:fg,            s:cyan)
call s:hl("Title",                    s:yellow,        s:none,   {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("VertSplit",                s:cyan,          s:cyan)
call s:hl("Visual",                   s:blue,          s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualNOS",                s:fg,            s:blue)
call s:hl("WarningMsg",               s:red,           s:none)
call s:hl("WildMenu",                 s:fg,            s:magenta)

call s:hl("Boolean",                  s:brightgreen,   s:none)
call s:hl("Character",                s:yellow,        s:none)
call s:hl("Comment",                  s:white,         s:none,   {'gui':   'NONE,italic'})
call s:hl("Constant",                 s:yellow,        s:none)
call s:hl("Debug",                    s:magenta,       s:none)
call s:hl("Delimiter",                s:fg,            s:none)
call s:hl("Float",                    s:brightgreen,   s:none)
call s:hl("Function",                 s:green,         s:none)
call s:hl("Identifier",               s:brightcyan,    s:none)
call s:hl("Ignore",                   s:fg,            s:none)
call s:hl("Include",                  s:red,           s:none)
call s:hl("Keyword",                  s:cyan,          s:none)
call s:hl("Label",                    s:green,         s:none)
call s:hl("Number",                   s:brightgreen,   s:none)
call s:hl("Operator",                 s:brightcyan,    s:none)
call s:hl("PreProc",                  s:magenta,       s:none)
call s:hl("Special",                  s:magenta,       s:none)
call s:hl("SpecialChar",              s:magenta,       s:none)
call s:hl("SpecialComment",           s:red,           s:none)
call s:hl("Statement",                s:cyan,          s:none)
call s:hl("StorageClass",             s:brightcyan,    s:none)
call s:hl("String",                   s:brightgreen,   s:none)
call s:hl("Structure",                s:red,           s:none)
call s:hl("Todo",                     s:magenta,       s:none,   {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("Type",                     s:brightmagenta, s:none)
call s:hl("Underlined",               s:none,          s:none,   {'cterm': 'NONE,underline',    'gui': 'NONE,underline'})

" Custom highlight groups for the main modes
call s:hl("NormalMode",               s:cyan,          s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("InsertMode",               s:brightgreen,   s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ReplaceMode",              s:yellow,        s:bg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualMode",               s:blue,          s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("CommandMode",              s:magenta,       s:fg,     {'cterm': 'NONE,reverse',      'gui': 'NONE,reverse'})

" NeoVim
call s:put("if has('nvim')")
call s:hlink("TermCursor", "Cursor", {'indent': 2})
call s:hl("TermCursorNC",             s:fg,            s:white,  {'indent': 2 })
for cc in s:palette
  call s:put("  let g:terminal_color_".cc[1]."='".cc[0]."'")
endfor
call s:put("endif")

" Vim
call s:hl("vimCommentTitle",          s:red,           s:none)
call s:hl("vimMapModKey",             s:yellow,        s:none)
call s:hl("vimMapMod",                s:yellow,        s:none)
call s:hl("vimBracket",               s:brightcyan,    s:none)
call s:hl("vimNotation",              s:brightcyan,    s:none)
call s:hlink("vimUserFunc",           "Function")

" Git
call s:hl("gitcommitComment",         s:brightblack,   s:none,   {'gui':   'NONE,italic'})

" Markdown
call s:hl("markdownHeadingDelimiter", s:yellow,        s:none)
call s:hl("markdownURL",              s:brightmagenta, s:none)
call s:hl("htmlItalic",               s:fg,            s:none,   {'gui':   'NONE,italic'})
call s:hl("htmlBold",                 s:fg,            s:none,   {'cterm': 'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("htmlBoldItalic",           s:fg,            s:none,   {'cterm': 'NONE,bold',         'gui':   'NONE,bold,italic'})

" JavaScript
call s:hlink("javascriptBraces",      "Delimiter")

" Syntastic
call s:hl("SyntasticErrorSign",       s:red,           s:none)
call s:hl("SyntasticWarningSign",     s:yellow,        s:none)

" Terminal italic
$append
if get(g:, "wwdc16_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
.

if !get(g:, 'wwdc16_demo', 0)
  finish
endif

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
execute s:hlstring("WWDC16S1", s:red,           s:none)
execute s:hlstring("WWDC16S2", s:brightgreen,   s:none)
execute s:hlstring("WWDC16S3", s:magenta,       s:none)
execute s:hlstring("WWDC16S4", s:brightcyan,    s:none)
execute s:hlstring("WWDC16S5", s:cyan,          s:none)
execute s:hlstring("WWDC16S6", s:yellow,        s:none)
execute s:hlstring("WWDC16S7", s:brightmagenta, s:none)

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

