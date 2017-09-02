" Name:     WWDC16 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc16'

let g:wwdc16_palette = ['#292c36', '#dc3c3c', '#52bd58', '#d28e5d', '#4670d8', '#b73999', '#64878f', '#999999', '#333344', '#dc3c3c', '#95c76f', '#d28e5d', '#4670d8', '#8485ce', '#00aba5', '#ffffff']

if !has('gui_running') && get(g:, 'wwdc16_term_trans_bg', 0)
  hi Normal ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
else
  hi Normal ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#292c36 gui=NONE guisp=NONE
endif


hi ColorColumn ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333344 gui=NONE guisp=NONE
hi Conceal ctermfg=6 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi Cursor ctermfg=15 ctermbg=4 cterm=NONE guifg=#ffffff guibg=#4670d8 gui=NONE guisp=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#ffffff gui=NONE guisp=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333344 gui=NONE guisp=NONE
hi CursorLine ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#333344 gui=NONE guisp=NONE
hi CursorLineNr ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi DiffAdd ctermfg=10 ctermbg=0 cterm=NONE,reverse guifg=#95c76f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi DiffChange ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,reverse guisp=NONE
hi DiffDelete ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi DiffText ctermfg=2 ctermbg=15 cterm=NONE,bold,reverse guifg=#52bd58 guibg=#ffffff gui=NONE,bold,reverse guisp=NONE
hi Directory ctermfg=10 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi EndOfBuffer ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi Error ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 cterm=NONE,reverse guifg=#dc3c3c guibg=#ffffff gui=NONE,reverse guisp=NONE
hi FoldColumn ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi Folded ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE,italic guisp=NONE
hi IncSearch ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,standout guisp=NONE
hi LineNr ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi MatchParen ctermfg=8 ctermbg=3 cterm=NONE,bold,reverse guifg=#333344 guibg=#d28e5d gui=NONE,bold,reverse guisp=NONE
hi ModeMsg ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi MoreMsg ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi NonText ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Pmenu ctermfg=0 ctermbg=6 cterm=NONE guifg=#292c36 guibg=#64878f gui=NONE guisp=NONE
hi PmenuSbar ctermfg=8 ctermbg=8 cterm=NONE guifg=#333344 guibg=#333344 gui=NONE guisp=NONE
hi PmenuSel ctermfg=15 ctermbg=3 cterm=NONE guifg=#ffffff guibg=#d28e5d gui=NONE guisp=NONE
hi PmenuThumb ctermfg=8 ctermbg=3 cterm=NONE guifg=#333344 guibg=#d28e5d gui=NONE guisp=NONE
hi Question ctermfg=7 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=NONE guisp=NONE
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=15 cterm=NONE,reverse guifg=#d28e5d guibg=#ffffff gui=NONE,reverse guisp=NONE
hi SignColumn ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi SpecialKey ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE guisp=NONE
hi SpellBad ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellCap ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellLocal ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi SpellRare ctermfg=13 ctermbg=NONE cterm=NONE,underline guifg=#8485ce guibg=NONE gui=NONE,undercurl guisp=#b73999
hi StatusLine ctermfg=6 ctermbg=15 cterm=NONE,reverse guifg=#64878f guibg=#ffffff gui=NONE,reverse guisp=NONE
hi StatusLineNC ctermfg=6 ctermbg=0 cterm=NONE,reverse guifg=#64878f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=0 ctermbg=6 cterm=NONE guifg=#292c36 guibg=#64878f gui=NONE guisp=NONE
hi TabLineFill ctermfg=15 ctermbg=6 cterm=NONE guifg=#ffffff guibg=#64878f gui=NONE guisp=NONE
hi TabLineSel ctermfg=15 ctermbg=6 cterm=NONE guifg=#ffffff guibg=#64878f gui=NONE guisp=NONE
hi Title ctermfg=3 ctermbg=NONE cterm=NONE,bold guifg=#d28e5d guibg=NONE gui=NONE,bold guisp=NONE
hi VertSplit ctermfg=6 ctermbg=6 cterm=NONE guifg=#64878f guibg=#64878f gui=NONE guisp=NONE
hi Visual ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#4670d8 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi VisualNOS ctermfg=15 ctermbg=4 cterm=NONE guifg=#ffffff guibg=#4670d8 gui=NONE guisp=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi WildMenu ctermfg=15 ctermbg=5 cterm=NONE guifg=#ffffff guibg=#b73999 gui=NONE guisp=NONE
hi Boolean ctermfg=10 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Character ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi Comment ctermfg=7 ctermbg=NONE cterm=NONE guifg=#999999 guibg=NONE gui=NONE,italic guisp=NONE
hi Constant ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi Debug ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi Delimiter ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Float ctermfg=10 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Function ctermfg=2 ctermbg=NONE cterm=NONE guifg=#52bd58 guibg=NONE gui=NONE guisp=NONE
hi Identifier ctermfg=14 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi Ignore ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
hi Include ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Keyword ctermfg=6 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi Label ctermfg=2 ctermbg=NONE cterm=NONE guifg=#52bd58 guibg=NONE gui=NONE guisp=NONE
hi Number ctermfg=10 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Operator ctermfg=14 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi PreProc ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi Special ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE cterm=NONE guifg=#b73999 guibg=NONE gui=NONE guisp=NONE
hi SpecialComment ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Statement ctermfg=6 ctermbg=NONE cterm=NONE guifg=#64878f guibg=NONE gui=NONE guisp=NONE
hi StorageClass ctermfg=14 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi String ctermfg=10 ctermbg=NONE cterm=NONE guifg=#95c76f guibg=NONE gui=NONE guisp=NONE
hi Structure ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi Todo ctermfg=5 ctermbg=NONE cterm=NONE,bold guifg=#b73999 guibg=NONE gui=NONE,bold guisp=NONE
hi Type ctermfg=13 ctermbg=NONE cterm=NONE guifg=#8485ce guibg=NONE gui=NONE guisp=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=NONE,underline guifg=NONE guibg=NONE gui=NONE,underline guisp=NONE
hi NormalMode ctermfg=8 ctermbg=15 cterm=NONE,reverse guifg=#333344 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi InsertMode ctermfg=10 ctermbg=0 cterm=NONE,reverse guifg=#95c76f guibg=#292c36 gui=NONE,reverse guisp=NONE
hi ReplaceMode ctermfg=3 ctermbg=0 cterm=NONE,reverse guifg=#d28e5d guibg=#292c36 gui=NONE,reverse guisp=NONE
hi VisualMode ctermfg=4 ctermbg=15 cterm=NONE,reverse guifg=#4670d8 guibg=#ffffff gui=NONE,reverse guisp=NONE
hi CommandMode ctermfg=5 ctermbg=15 cterm=NONE,reverse guifg=#b73999 guibg=#ffffff gui=NONE,reverse guisp=NONE
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=15 ctermbg=7 cterm=NONE guifg=#ffffff guibg=#999999 gui=NONE guisp=NONE
  let g:terminal_color_0='#292c36'
  let g:terminal_color_1='#dc3c3c'
  let g:terminal_color_2='#52bd58'
  let g:terminal_color_3='#d28e5d'
  let g:terminal_color_4='#4670d8'
  let g:terminal_color_5='#b73999'
  let g:terminal_color_6='#64878f'
  let g:terminal_color_7='#999999'
  let g:terminal_color_8='#333344'
  let g:terminal_color_9='#dc3c3c'
  let g:terminal_color_10='#95c76f'
  let g:terminal_color_11='#d28e5d'
  let g:terminal_color_12='#4670d8'
  let g:terminal_color_13='#8485ce'
  let g:terminal_color_14='#00aba5'
  let g:terminal_color_15='#ffffff'
endif
hi vimCommentTitle ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi vimMapModKey ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi vimMapMod ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi vimBracket ctermfg=14 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi vimNotation ctermfg=14 ctermbg=NONE cterm=NONE guifg=#00aba5 guibg=NONE gui=NONE guisp=NONE
hi! link vimUserFunc Function
hi gitcommitComment ctermfg=8 ctermbg=NONE cterm=NONE guifg=#333344 guibg=NONE gui=NONE,italic guisp=NONE
hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
hi markdownURL ctermfg=13 ctermbg=NONE cterm=NONE guifg=#8485ce guibg=NONE gui=NONE guisp=NONE
hi htmlItalic ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE,italic guisp=NONE
hi htmlBold ctermfg=15 ctermbg=NONE cterm=NONE,bold guifg=#ffffff guibg=NONE gui=NONE,bold guisp=NONE
hi htmlBoldItalic ctermfg=15 ctermbg=NONE cterm=NONE,bold guifg=#ffffff guibg=NONE gui=NONE,bold,italic guisp=NONE
hi! link javascriptBraces Delimiter
hi SyntasticErrorSign ctermfg=1 ctermbg=NONE cterm=NONE guifg=#dc3c3c guibg=NONE gui=NONE guisp=NONE
hi SyntasticWarningSign ctermfg=3 ctermbg=NONE cterm=NONE guifg=#d28e5d guibg=NONE gui=NONE guisp=NONE
if get(g:, "wwdc16_term_italics", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
