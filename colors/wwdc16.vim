" Name:         WWDC16
" Description:  Colorful dark color scheme for Vim inspired by Apple's WWDC16 page
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-wwdc16-theme
" License:      This file is placed in the public domain
" Last Updated: Thu Oct 26 17:15:42 2017

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 16)
  echoerr '[WWDC16] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wwdc16'

if !has('gui_running') && get(g:, 'wwdc16_transp_bg', 0)
hi Normal ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Pmenu ctermfg=NONE ctermbg=6 guifg=NONE guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLine ctermfg=NONE ctermbg=6 guifg=NONE guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi InsertMode ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
else
hi Normal ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=bg guifg=#95c76f guibg=bg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Pmenu ctermfg=bg ctermbg=6 guifg=bg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=6 ctermbg=bg guifg=#64878f guibg=bg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLine ctermfg=bg ctermbg=6 guifg=bg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi InsertMode ctermfg=10 ctermbg=bg guifg=#95c76f guibg=bg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=3 ctermbg=bg guifg=#d28e5d guibg=bg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
endif
hi ColorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=fg ctermbg=4 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=3 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=2 ctermbg=fg guifg=#52bd58 guibg=fg guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=8 ctermbg=NONE guifg=#333344 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=7 ctermbg=8 guifg=#999999 guibg=#333344 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=3 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=8 ctermbg=3 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=8 ctermbg=8 guifg=#333344 guibg=#333344 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=3 guifg=fg guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=8 ctermbg=3 guifg=#333344 guibg=#d28e5d guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=fg guifg=#d28e5d guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b73999 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b73999 cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b73999 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#b73999 cterm=NONE,underline gui=NONE,undercurl
hi StatusLine ctermfg=6 ctermbg=fg guifg=#64878f guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLineFill ctermfg=fg ctermbg=6 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=fg ctermbg=6 guifg=fg guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VertSplit ctermfg=6 ctermbg=6 guifg=#64878f guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=4 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=fg ctermbg=4 guifg=fg guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=fg ctermbg=5 guifg=fg guibg=#b73999 guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi Debug ctermfg=5 ctermbg=NONE guifg=#b73999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=1 ctermbg=fg guifg=#dc3c3c guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi Float ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=2 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=2 ctermbg=NONE guifg=#52bd58 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Macro PreProc
hi Number ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link PreCondit PreProc
hi PreProc ctermfg=5 ctermbg=NONE guifg=#b73999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=5 ctermbg=NONE guifg=#b73999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE guifg=#b73999 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=5 ctermbg=NONE guifg=#b73999 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi NormalMode ctermfg=6 ctermbg=fg guifg=#64878f guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=4 ctermbg=fg guifg=#4670d8 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=5 ctermbg=fg guifg=#b73999 guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
hi! link TermCursor Cursor
hi TermCursorNC ctermfg=fg ctermbg=7 guifg=fg guibg=#999999 guisp=NONE cterm=NONE gui=NONE
let g:terminal_color_0='#292c36'
let g:terminal_color_1='#dc3c3c'
let g:terminal_color_2='#52bd58'
let g:terminal_color_3='#d28e5d'
let g:terminal_color_4='#4670d8'
let g:terminal_color_5='#b73999'
let g:terminal_color_6='#64878f'
let g:terminal_color_7='#999999'
let g:terminal_color_8='#333344'
let g:terminal_color_9='#f84547'
let g:terminal_color_10='#95c76f'
let g:terminal_color_11='#efa16b'
let g:terminal_color_12='#5283ff'
let g:terminal_color_13='#8485ce'
let g:terminal_color_14='#00aba5'
let g:terminal_color_15='#ffffff'
endif
hi vimCommentTitle ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi vimMapModKey ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi vimMapMod ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi vimBracket ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi vimNotation ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link vimUserFunc Function
hi gitcommitComment ctermfg=7 ctermbg=NONE guifg=#999999 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownURL ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi htmlItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi htmlBold ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi htmlBoldItalic ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link javascriptBraces Delimiter
hi SyntasticErrorSign ctermfg=1 ctermbg=NONE guifg=#dc3c3c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SyntasticWarningSign ctermfg=3 ctermbg=NONE guifg=#d28e5d guibg=NONE guisp=NONE cterm=NONE gui=NONE
if get(g:, "wwdc16_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
let g:wwdc16_palette = ['#292c36', '#dc3c3c', '#52bd58', '#d28e5d', '#4670d8', '#b73999',
    \                   '#64878f', '#999999', '#333344', '#95c76f', '#efa16b',
    \                   '#5283ff', '#8485ce', '#00aba5', '#ffffff']

" Color: black                rgb( 41,  44,  54)      ~        0
" Color: red                  rgb(220,  60,  60)      ~        1
" Color: green                rgb( 82, 189,  88)      ~        2
" Color: yellow               rgb(210, 142,  93)      ~        3
" Color: blue                 rgb( 70, 112, 216)      ~        4
" Color: magenta              rgb(183,  57, 153)      ~        5
" Color: cyan                 rgb(100, 135, 143)      ~        6
" Color: white                rgb(153, 153, 153)      ~        7
" Color: brightblack          rgb( 51,  51,  68)      ~        8
" Color: brightred            rgb(248,  69,  71)      ~        9
" Color: brightgreen          rgb(149, 199, 111)      ~        10
" Color: brightyellow         rgb(239, 161, 107)      ~        11
" Color: brightblue           rgb( 82, 131, 255)      ~        12
" Color: brightmagenta        rgb(132, 133, 206)      ~        13
" Color: brightcyan           rgb(  0, 171, 165)      ~        14
" Color: brightwhite          rgb(255, 255, 255)      ~        15
" Background: dark
" Normal               brightwhite       black
" ColorColumn          none              brightblack
" Conceal              cyan              none
" Cursor               fg                blue
" CursorColumn         none              brightblack
" CursorLine           none              brightblack
" CursorLineNr         fg                none
" DiffAdd              brightgreen       bg                reverse
" DiffChange           yellow            fg                reverse
" DiffDelete           red               fg                reverse
" DiffText             green             fg                bold,reverse
" Directory            brightgreen       none
" EndOfBuffer          brightblack       none
" ErrorMsg             red               fg                reverse
" FoldColumn           white             none
" Folded               white             brightblack       g=italic
" IncSearch            yellow            fg                t=reverse g=standout
" LineNr               white             none
" MatchParen           brightblack       yellow            bold,reverse
" ModeMsg              fg                none
" MoreMsg              white             none
" NonText              fg                none
" Pmenu                bg                cyan
" PmenuSbar            brightblack       brightblack
" PmenuSel             fg                yellow
" PmenuThumb           brightblack       yellow
" Question             white             none
" QuickFixLine     ->  Search
" Search               yellow            fg                reverse
" SignColumn           white             none
" SpecialKey           white             none
" SpellBad             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellCap             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellLocal           brightmagenta     none              s=magenta t=underline g=undercurl
" SpellRare            brightmagenta     none              s=magenta t=underline g=undercurl
" StatusLine           cyan              fg                reverse
" StatusLineNC         cyan              bg                reverse
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" TabLine              bg                cyan
" TabLineFill          fg                cyan
" TabLineSel           fg                cyan
" Title                yellow            none              bold
" VertSplit            cyan              cyan
" Visual               blue              fg                reverse
" VisualNOS            fg                blue
" WarningMsg           red               none
" WildMenu             fg                magenta
" Boolean              brightgreen       none
" Character            yellow            none
" Comment              white             none              g=italic
" Conditional       -> Statement
" Constant             yellow            none
" Define            -> PreProc
" Debug                magenta           none
" Delimiter            fg                none
" Error                red               fg                reverse
" Exception         -> Statement
" Float                brightgreen       none
" Function             green             none
" Identifier           brightcyan        none
" Ignore               fg                none
" Include              red               none
" Keyword              cyan              none
" Label                green             none
" Macro             -> PreProc
" Number               brightgreen       none
" Operator             brightcyan        none
" PreCondit         -> PreProc
" PreProc              magenta           none
" Repeat            -> Statement
" Special              magenta           none
" SpecialChar          magenta           none
" SpecialComment       red               none
" Statement            cyan              none
" StorageClass         brightcyan        none
" String               brightgreen       none
" Structure            red               none
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 brightmagenta     none
" Typedef           -> Type
" Underlined           none              none              underline
" lCursor           -> Cursor
" CursorIM             none              fg
" NormalMode           cyan              fg                reverse
" InsertMode           brightgreen       bg                reverse
" ReplaceMode          yellow            bg                reverse
" VisualMode           blue              fg                reverse
" CommandMode          magenta           fg                reverse
" verbatim
" if has('nvim')
" endverbatim
" TermCursor        -> Cursor
" TermCursorNC         fg                white
" verbatim
" endif
" endverbatim
" vimCommentTitle      red               none
" vimMapModKey         yellow            none
" vimMapMod            yellow            none
" vimBracket           brightcyan        none
" vimNotation          brightcyan        none
" vimUserFunc       -> Function
" gitcommitComment     white             none              g=italic
" markdownHeadingDelimiter yellow        none
" markdownURL          brightmagenta     none
" htmlItalic           fg                none              g=italic
" htmlBold             fg                none              bold
" htmlBoldItalic       fg                none              bold
" javascriptBraces  -> Delimiter
" SyntasticErrorSign   red               none
" SyntasticWarningSign yellow            none
" verbatim
"   hi Comment cterm=italic
"   hi Folded cterm=italic
"   hi htmlItalic cterm=italic
"   hi htmlBoldItalic cterm=NONE,bold,italic
"   hi gitcommitComment cterm=italic
" endif
" endverbatim
" verbatim
"     \                   '@guicyan', '@guiwhite', '@guibrightblack', '@guibrightgreen', '@guibrightyellow',
"     \                   '@guibrightblue', '@guibrightmagenta', '@guibrightcyan', '@guibrightwhite']
" endverbatim
