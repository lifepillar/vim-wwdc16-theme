" Name:         WWDC16
" Description:  Colorful dark color scheme for Vim inspired by Apple's WWDC16 page
" Authors:      Lifepillar <lifepillar@lifepillar.me>
" URLs:         https://github.com/lifepillar/vim-wwdc16-theme
" License:      MIT
" Last Updated: Sun Apr 16 17:45:22 2023

" Generated by Colortemplate v3.0.0-dev

set background=dark

hi clear
let g:colors_name = 'wwdc16'

let s:t_Co = exists('&t_Co') && !has('gui_running') ? +&t_Co : -1
let s:transp_bg = get(g:, 'wwdc16_transp_bg', 0)
let s:italic = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

let g:terminal_ansi_colors = ['#292c36', '#e64547', '#42a647', '#c98351', '#4670d8', '#d24e9b', '#64878f', '#949494', '#353547', '#f84547', '#95c76f', '#efa16b', '#5283ff', '#8485ce', '#00aba5', '#ffffff']

hi! link Conditional Statement
hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Define PreProc
hi! link Exception Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link Macro PreProc
hi! link MessageWindow WarningMsg
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link TermCursor Cursor
hi! link Typedef Type
hi! link debugBreakpoint SignColumn
hi! link debugPC SignColumn
hi! link lCursor Cursor

hi Normal guifg=#ffffff guibg=#292c36 guisp=NONE gui=NONE cterm=NONE
hi Boolean guifg=#95c76f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Character guifg=#c98351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi CommandMode guifg=#d24e9b guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi Comment guifg=#949494 guibg=NONE guisp=NONE gui=italic cterm=italic
hi Conceal guifg=#64878f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Constant guifg=#c98351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Cursor guifg=#ffffff guibg=#4670d8 guisp=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi CursorIM guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#ffffff guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi Debug guifg=#d24e9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#ffffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#95c76f guibg=#292c36 guisp=NONE gui=reverse cterm=reverse
hi DiffChange guifg=#c98351 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi DiffDelete guifg=#e64547 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi DiffText guifg=#42a647 guibg=#ffffff guisp=NONE gui=bold,reverse cterm=bold,reverse
hi Directory guifg=#95c76f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#353547 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Error guifg=#e64547 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=#e64547 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi Float guifg=#95c76f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#949494 guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi Folded guifg=#949494 guibg=#353547 guisp=NONE gui=italic cterm=italic
hi Function guifg=#42a647 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Identifier guifg=#00aba5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Ignore guifg=#ffffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#d24e9b guibg=#ffffff guisp=NONE gui=standout cterm=standout
hi Include guifg=#e64547 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi InsertMode guifg=#95c76f guibg=#292c36 guisp=NONE gui=reverse cterm=reverse
hi Keyword guifg=#64878f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Label guifg=#42a647 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi LineNr guifg=#949494 guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#353547 guibg=#c98351 guisp=NONE gui=bold,reverse cterm=bold,reverse
hi ModeMsg guifg=#ffffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#949494 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi NonText guifg=#ffffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi NormalMode guifg=#949494 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi Number guifg=#95c76f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Operator guifg=#00aba5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#292c36 guibg=#64878f guisp=NONE gui=NONE cterm=NONE
hi PmenuSbar guifg=#353547 guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi PmenuSel guifg=#ffffff guibg=#c98351 guisp=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#353547 guibg=#c98351 guisp=NONE gui=NONE cterm=NONE
hi PreProc guifg=#d24e9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Question guifg=#949494 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi ReplaceMode guifg=#c98351 guibg=#292c36 guisp=NONE gui=reverse cterm=reverse
hi Search guifg=#c98351 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi SignColumn guifg=#949494 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Special guifg=#d24e9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#d24e9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#e64547 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#949494 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#8485ce guibg=NONE guisp=#d24e9b gui=undercurl cterm=undercurl
hi SpellCap guifg=#8485ce guibg=NONE guisp=#d24e9b gui=undercurl cterm=undercurl
hi SpellLocal guifg=#8485ce guibg=NONE guisp=#d24e9b gui=undercurl cterm=undercurl
hi SpellRare guifg=#8485ce guibg=NONE guisp=#d24e9b gui=undercurl cterm=undercurl
hi Statement guifg=#64878f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#64878f guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi StatusLineNC guifg=#64878f guibg=#292c36 guisp=NONE gui=reverse cterm=reverse
hi StorageClass guifg=#00aba5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi String guifg=#95c76f guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Structure guifg=#e64547 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi TabLine guifg=#292c36 guibg=#64878f guisp=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=#ffffff guibg=#64878f guisp=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#64878f guisp=NONE gui=NONE cterm=NONE
hi TermCursorNC guifg=#ffffff guibg=#949494 guisp=NONE gui=NONE cterm=NONE
hi Terminal guifg=#ffffff guibg=#292c36 guisp=NONE gui=NONE cterm=NONE
hi Title guifg=#c98351 guibg=NONE guisp=NONE gui=bold cterm=bold
hi Todo guifg=#d24e9b guibg=NONE guisp=NONE gui=bold cterm=bold
hi ToolbarButton guifg=#64878f guibg=#353547 guisp=NONE gui=bold cterm=bold
hi ToolbarLine guifg=NONE guibg=#353547 guisp=NONE gui=NONE cterm=NONE
hi Type guifg=#8485ce guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
hi VertSplit guifg=#353547 guibg=#64878f guisp=NONE gui=NONE cterm=NONE
hi Visual guifg=#4670d8 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi VisualMode guifg=#4670d8 guibg=#ffffff guisp=NONE gui=reverse cterm=reverse
hi VisualNOS guifg=#ffffff guibg=#4670d8 guisp=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#e64547 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#ffffff guibg=#d24e9b guisp=NONE gui=NONE cterm=NONE

if s:t_Co >= 256
  hi Normal ctermfg=231 ctermbg=236 ctermul=NONE cterm=NONE
  hi Boolean ctermfg=150 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Character ctermfg=173 ctermbg=NONE ctermul=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=237 ctermul=NONE cterm=NONE
  hi CommandMode ctermfg=169 ctermbg=231 ctermul=NONE cterm=reverse
  hi Comment ctermfg=246 ctermbg=NONE ctermul=NONE cterm=italic
  hi Conceal ctermfg=66 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Constant ctermfg=173 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Cursor ctermfg=231 ctermbg=26 ctermul=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 ctermul=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=231 ctermul=NONE cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 ctermul=NONE cterm=NONE
  hi CursorLineNr ctermfg=231 ctermbg=237 ctermul=NONE cterm=NONE
  hi Debug ctermfg=169 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Delimiter ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
  hi DiffAdd ctermfg=150 ctermbg=236 ctermul=NONE cterm=reverse
  hi DiffChange ctermfg=173 ctermbg=231 ctermul=NONE cterm=reverse
  hi DiffDelete ctermfg=167 ctermbg=231 ctermul=NONE cterm=reverse
  hi DiffText ctermfg=71 ctermbg=231 ctermul=NONE cterm=bold,reverse
  hi Directory ctermfg=150 ctermbg=NONE ctermul=NONE cterm=NONE
  hi EndOfBuffer ctermfg=237 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Error ctermfg=167 ctermbg=231 ctermul=NONE cterm=reverse
  hi ErrorMsg ctermfg=167 ctermbg=231 ctermul=NONE cterm=reverse
  hi Float ctermfg=150 ctermbg=NONE ctermul=NONE cterm=NONE
  hi FoldColumn ctermfg=246 ctermbg=237 ctermul=NONE cterm=NONE
  hi Folded ctermfg=246 ctermbg=237 ctermul=NONE cterm=italic
  hi Function ctermfg=71 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Identifier ctermfg=37 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Ignore ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
  hi IncSearch ctermfg=169 ctermbg=231 ctermul=NONE cterm=reverse
  hi Include ctermfg=167 ctermbg=NONE ctermul=NONE cterm=NONE
  hi InsertMode ctermfg=150 ctermbg=236 ctermul=NONE cterm=reverse
  hi Keyword ctermfg=66 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Label ctermfg=71 ctermbg=NONE ctermul=NONE cterm=NONE
  hi LineNr ctermfg=246 ctermbg=237 ctermul=NONE cterm=NONE
  hi MatchParen ctermfg=237 ctermbg=173 ctermul=NONE cterm=bold,reverse
  hi ModeMsg ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
  hi MoreMsg ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
  hi NonText ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
  hi NormalMode ctermfg=246 ctermbg=231 ctermul=NONE cterm=reverse
  hi Number ctermfg=150 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Operator ctermfg=37 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Pmenu ctermfg=236 ctermbg=66 ctermul=NONE cterm=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 ctermul=NONE cterm=NONE
  hi PmenuSel ctermfg=231 ctermbg=173 ctermul=NONE cterm=NONE
  hi PmenuThumb ctermfg=237 ctermbg=173 ctermul=NONE cterm=NONE
  hi PreProc ctermfg=169 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Question ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
  hi ReplaceMode ctermfg=173 ctermbg=236 ctermul=NONE cterm=reverse
  hi Search ctermfg=173 ctermbg=231 ctermul=NONE cterm=reverse
  hi SignColumn ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Special ctermfg=169 ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialChar ctermfg=169 ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialComment ctermfg=167 ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialKey ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpellBad ctermfg=104 ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellCap ctermfg=104 ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellLocal ctermfg=104 ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellRare ctermfg=104 ctermbg=NONE ctermul=NONE cterm=underline
  hi Statement ctermfg=66 ctermbg=NONE ctermul=NONE cterm=NONE
  hi StatusLine ctermfg=66 ctermbg=231 ctermul=NONE cterm=reverse
  hi StatusLineNC ctermfg=66 ctermbg=236 ctermul=NONE cterm=reverse
  hi StorageClass ctermfg=37 ctermbg=NONE ctermul=NONE cterm=NONE
  hi String ctermfg=150 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Structure ctermfg=167 ctermbg=NONE ctermul=NONE cterm=NONE
  hi TabLine ctermfg=236 ctermbg=66 ctermul=NONE cterm=NONE
  hi TabLineFill ctermfg=231 ctermbg=66 ctermul=NONE cterm=NONE
  hi TabLineSel ctermfg=231 ctermbg=66 ctermul=NONE cterm=NONE
  hi TermCursorNC ctermfg=231 ctermbg=246 ctermul=NONE cterm=NONE
  hi Terminal ctermfg=231 ctermbg=236 ctermul=NONE cterm=NONE
  hi Title ctermfg=173 ctermbg=NONE ctermul=NONE cterm=bold
  hi Todo ctermfg=169 ctermbg=NONE ctermul=NONE cterm=bold
  hi ToolbarButton ctermfg=66 ctermbg=237 ctermul=NONE cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=237 ctermul=NONE cterm=NONE
  hi Type ctermfg=104 ctermbg=NONE ctermul=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE ctermul=NONE cterm=underline
  hi VertSplit ctermfg=237 ctermbg=66 ctermul=NONE cterm=NONE
  hi Visual ctermfg=26 ctermbg=231 ctermul=NONE cterm=reverse
  hi VisualMode ctermfg=26 ctermbg=231 ctermul=NONE cterm=reverse
  hi VisualNOS ctermfg=231 ctermbg=26 ctermul=NONE cterm=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE ctermul=NONE cterm=NONE
  hi WildMenu ctermfg=231 ctermbg=169 ctermul=NONE cterm=NONE
  if s:italic == 0
    hi Comment ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
    hi Folded ctermfg=246 ctermbg=237 ctermul=NONE cterm=NONE
  endif
  if s:transp_bg == 1
    hi Normal ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
    hi CursorLineNr ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
    hi FoldColumn ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
    hi LineNr ctermfg=246 ctermbg=NONE ctermul=NONE cterm=NONE
    hi Terminal ctermfg=231 ctermbg=NONE ctermul=NONE cterm=NONE
  endif
  unlet s:t_Co
  unlet s:transp_bg
  unlet s:italic
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=White ctermbg=Black ctermul=NONE cterm=NONE
  hi Boolean ctermfg=Green ctermbg=NONE ctermul=NONE cterm=NONE
  hi Character ctermfg=DarkYellow ctermbg=NONE ctermul=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi CommandMode ctermfg=DarkMagenta ctermbg=White ctermul=NONE cterm=reverse
  hi Comment ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=italic
  hi Conceal ctermfg=DarkCyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi Constant ctermfg=DarkYellow ctermbg=NONE ctermul=NONE cterm=NONE
  hi Cursor ctermfg=White ctermbg=DarkBlue ctermul=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=White ctermul=NONE cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi CursorLineNr ctermfg=White ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi Debug ctermfg=DarkMagenta ctermbg=NONE ctermul=NONE cterm=NONE
  hi Delimiter ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
  hi DiffAdd ctermfg=Green ctermbg=Black ctermul=NONE cterm=reverse
  hi DiffChange ctermfg=DarkYellow ctermbg=White ctermul=NONE cterm=reverse
  hi DiffDelete ctermfg=DarkRed ctermbg=White ctermul=NONE cterm=reverse
  hi DiffText ctermfg=DarkGreen ctermbg=White ctermul=NONE cterm=bold,reverse
  hi Directory ctermfg=Green ctermbg=NONE ctermul=NONE cterm=NONE
  hi EndOfBuffer ctermfg=DarkGray ctermbg=NONE ctermul=NONE cterm=NONE
  hi Error ctermfg=DarkRed ctermbg=White ctermul=NONE cterm=reverse
  hi ErrorMsg ctermfg=DarkRed ctermbg=White ctermul=NONE cterm=reverse
  hi Float ctermfg=Green ctermbg=NONE ctermul=NONE cterm=NONE
  hi FoldColumn ctermfg=Gray ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi Folded ctermfg=Gray ctermbg=DarkGray ctermul=NONE cterm=italic
  hi Function ctermfg=DarkGreen ctermbg=NONE ctermul=NONE cterm=NONE
  hi Identifier ctermfg=Cyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi Ignore ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
  hi IncSearch ctermfg=DarkMagenta ctermbg=White ctermul=NONE cterm=reverse
  hi Include ctermfg=DarkRed ctermbg=NONE ctermul=NONE cterm=NONE
  hi InsertMode ctermfg=Green ctermbg=Black ctermul=NONE cterm=reverse
  hi Keyword ctermfg=DarkCyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi Label ctermfg=DarkGreen ctermbg=NONE ctermul=NONE cterm=NONE
  hi LineNr ctermfg=Gray ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi MatchParen ctermfg=DarkGray ctermbg=DarkYellow ctermul=NONE cterm=bold,reverse
  hi ModeMsg ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
  hi MoreMsg ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
  hi NonText ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
  hi NormalMode ctermfg=Gray ctermbg=White ctermul=NONE cterm=reverse
  hi Number ctermfg=Green ctermbg=NONE ctermul=NONE cterm=NONE
  hi Operator ctermfg=Cyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi Pmenu ctermfg=Black ctermbg=DarkCyan ctermul=NONE cterm=NONE
  hi PmenuSbar ctermfg=DarkGray ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi PmenuSel ctermfg=White ctermbg=DarkYellow ctermul=NONE cterm=NONE
  hi PmenuThumb ctermfg=DarkGray ctermbg=DarkYellow ctermul=NONE cterm=NONE
  hi PreProc ctermfg=DarkMagenta ctermbg=NONE ctermul=NONE cterm=NONE
  hi Question ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
  hi ReplaceMode ctermfg=DarkYellow ctermbg=Black ctermul=NONE cterm=reverse
  hi Search ctermfg=DarkYellow ctermbg=White ctermul=NONE cterm=reverse
  hi SignColumn ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
  hi Special ctermfg=DarkMagenta ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialChar ctermfg=DarkMagenta ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialComment ctermfg=DarkRed ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpecialKey ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
  hi SpellBad ctermfg=Magenta ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellCap ctermfg=Magenta ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellLocal ctermfg=Magenta ctermbg=NONE ctermul=NONE cterm=underline
  hi SpellRare ctermfg=Magenta ctermbg=NONE ctermul=NONE cterm=underline
  hi Statement ctermfg=DarkCyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi StatusLine ctermfg=DarkCyan ctermbg=White ctermul=NONE cterm=reverse
  hi StatusLineNC ctermfg=DarkCyan ctermbg=Black ctermul=NONE cterm=reverse
  hi StorageClass ctermfg=Cyan ctermbg=NONE ctermul=NONE cterm=NONE
  hi String ctermfg=Green ctermbg=NONE ctermul=NONE cterm=NONE
  hi Structure ctermfg=DarkRed ctermbg=NONE ctermul=NONE cterm=NONE
  hi TabLine ctermfg=Black ctermbg=DarkCyan ctermul=NONE cterm=NONE
  hi TabLineFill ctermfg=White ctermbg=DarkCyan ctermul=NONE cterm=NONE
  hi TabLineSel ctermfg=White ctermbg=DarkCyan ctermul=NONE cterm=NONE
  hi TermCursorNC ctermfg=White ctermbg=Gray ctermul=NONE cterm=NONE
  hi Terminal ctermfg=White ctermbg=Black ctermul=NONE cterm=NONE
  hi Title ctermfg=DarkYellow ctermbg=NONE ctermul=NONE cterm=bold
  hi Todo ctermfg=DarkMagenta ctermbg=NONE ctermul=NONE cterm=bold
  hi ToolbarButton ctermfg=DarkCyan ctermbg=DarkGray ctermul=NONE cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=DarkGray ctermul=NONE cterm=NONE
  hi Type ctermfg=Magenta ctermbg=NONE ctermul=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE ctermul=NONE cterm=underline
  hi VertSplit ctermfg=DarkGray ctermbg=DarkCyan ctermul=NONE cterm=NONE
  hi Visual ctermfg=DarkBlue ctermbg=White ctermul=NONE cterm=reverse
  hi VisualMode ctermfg=DarkBlue ctermbg=White ctermul=NONE cterm=reverse
  hi VisualNOS ctermfg=White ctermbg=DarkBlue ctermul=NONE cterm=NONE
  hi WarningMsg ctermfg=DarkRed ctermbg=NONE ctermul=NONE cterm=NONE
  hi WildMenu ctermfg=White ctermbg=DarkMagenta ctermul=NONE cterm=NONE
  if s:italic == 0
    hi Comment ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
    hi Folded ctermfg=Gray ctermbg=DarkGray ctermul=NONE cterm=NONE
  endif
  if s:transp_bg == 1
    hi Normal ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
    hi CursorLineNr ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
    hi FoldColumn ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
    hi LineNr ctermfg=Gray ctermbg=NONE ctermul=NONE cterm=NONE
    hi Terminal ctermfg=White ctermbg=NONE ctermul=NONE cterm=NONE
  endif
  unlet s:t_Co
  unlet s:transp_bg
  unlet s:italic
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi Boolean term=NONE
  hi Character term=NONE
  hi ColorColumn term=reverse
  hi CommandMode term=reverse
  hi Comment term=italic
  hi Conceal term=NONE
  hi Constant term=bold,italic
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorIM term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold,italic,reverse,underline
  hi Debug term=NONE
  hi Delimiter term=NONE
  hi DiffAdd term=reverse,underline
  hi DiffChange term=reverse,underline
  hi DiffDelete term=reverse,underline
  hi DiffText term=bold,reverse,underline
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi Error term=reverse
  hi ErrorMsg term=bold,italic,reverse
  hi Float term=NONE
  hi FoldColumn term=reverse
  hi Folded term=italic,reverse,underline
  hi Function term=NONE
  hi Identifier term=italic
  hi Ignore term=NONE
  hi IncSearch term=bold,italic,reverse
  hi Include term=NONE
  hi InsertMode term=reverse
  hi Keyword term=NONE
  hi Label term=NONE
  hi LineNr term=reverse
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi NormalMode term=reverse
  hi Number term=NONE
  hi Operator term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi PreProc term=italic
  hi Question term=standout
  hi ReplaceMode term=reverse
  hi Search term=italic,underline
  hi SignColumn term=reverse
  hi Special term=bold,italic
  hi SpecialChar term=NONE
  hi SpecialComment term=NONE
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi Statement term=bold
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi StorageClass term=NONE
  hi String term=NONE
  hi Structure term=NONE
  hi TabLine term=italic,reverse,underline
  hi TabLineFill term=reverse,underline
  hi TabLineSel term=bold
  hi TermCursorNC term=NONE
  hi Terminal term=NONE
  hi Title term=bold
  hi Todo term=bold,underline
  hi ToolbarButton term=bold,reverse
  hi ToolbarLine term=reverse
  hi Type term=bold
  hi Underlined term=underline
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualMode term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  unlet s:t_Co
  unlet s:transp_bg
  unlet s:italic
  finish
endif

" vim: nowrap et sw=2
