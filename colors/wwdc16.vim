" Name:         WWDC16
" Description:  Colorful dark color scheme for Vim inspired by Apple's WWDC16 page
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-wwdc16-theme
" License:      This file is placed in the public domain
" Last Updated: Wed Aug  8 13:57:19 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'wwdc16_use16', &t_Co < 256) ? 16 : 256))
  echoerr '[WWDC16] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wwdc16'

" 256-color variant
if !get(g:, 'wwdc16_use16', &t_Co < 256)
  let g:terminal_ansi_colors = ['#292c36', '#e64547', '#42a647', '#c98351', '#4670d8', '#d24e9b',
        \                         '#64878f', '#949494', '#353547', '#f84547', '#95c76f', '#efa16b',
        \                         '#5283ff', '#8485ce', '#00aba5', '#ffffff']

  if !has('gui_running') && get(g:, 'wwdc16_transp_bg', 0)
    hi Normal ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi LineNr ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=231 ctermbg=236 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=231 ctermbg=237 guifg=#ffffff guibg=#353547 guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=246 ctermbg=237 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
    hi LineNr ctermfg=246 ctermbg=237 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=231 ctermbg=236 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=231 ctermbg=26 guifg=#ffffff guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=150 ctermbg=236 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=173 ctermbg=231 guifg=#c98351 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=167 ctermbg=231 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=71 ctermbg=231 guifg=#42a647 guibg=#ffffff guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi Directory ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=237 ctermbg=NONE guifg=#353547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=167 ctermbg=231 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=246 ctermbg=237 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=169 ctermbg=231 guifg=#d24e9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,standout
  hi MatchParen ctermfg=237 ctermbg=173 guifg=#353547 guibg=#c98351 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ModeMsg ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=236 ctermbg=66 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=237 ctermbg=237 guifg=#353547 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=231 ctermbg=173 guifg=#ffffff guibg=#c98351 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=237 ctermbg=173 guifg=#353547 guibg=#c98351 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=173 ctermbg=231 guifg=#c98351 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
  hi StatusLine ctermfg=66 ctermbg=231 guifg=#64878f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=66 ctermbg=236 guifg=#64878f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLine ctermfg=236 ctermbg=66 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=66 guifg=#ffffff guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=66 guifg=#ffffff guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=237 ctermbg=66 guifg=#353547 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=26 ctermbg=231 guifg=#4670d8 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=231 ctermbg=26 guifg=#ffffff guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=169 guifg=#ffffff guibg=#d24e9b guisp=NONE cterm=NONE gui=NONE
  hi Boolean ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi! link Conditional Statement
  hi Constant ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi Debug ctermfg=169 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=167 ctermbg=231 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link Exception Statement
  hi Float ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=71 ctermbg=NONE guifg=#42a647 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=71 ctermbg=NONE guifg=#42a647 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Macro PreProc
  hi Number ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link PreCondit PreProc
  hi PreProc ctermfg=169 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=169 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=169 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=66 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=150 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Tag Special
  hi Todo ctermfg=169 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=231 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=66 ctermbg=237 guifg=#64878f guibg=#353547 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi NormalMode ctermfg=246 ctermbg=231 guifg=#949494 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi InsertMode ctermfg=150 ctermbg=236 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ReplaceMode ctermfg=173 ctermbg=236 guifg=#c98351 guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualMode ctermfg=26 ctermbg=231 guifg=#4670d8 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CommandMode ctermfg=169 ctermbg=231 guifg=#d24e9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC ctermfg=231 ctermbg=246 guifg=#ffffff guibg=#949494 guisp=NONE cterm=NONE gui=NONE
    let g:terminal_color_0='#292c36'
    let g:terminal_color_1='#e64547'
    let g:terminal_color_2='#42a647'
    let g:terminal_color_3='#c98351'
    let g:terminal_color_4='#4670d8'
    let g:terminal_color_5='#d24e9b'
    let g:terminal_color_6='#64878f'
    let g:terminal_color_7='#949494'
    let g:terminal_color_8='#353547'
    let g:terminal_color_9='#f84547'
    let g:terminal_color_10='#95c76f'
    let g:terminal_color_11='#efa16b'
    let g:terminal_color_12='#5283ff'
    let g:terminal_color_13='#8485ce'
    let g:terminal_color_14='#00aba5'
    let g:terminal_color_15='#ffffff'
  endif
  if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
    hi vimCommentTitle ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapModKey ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimMapMod ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimBracket ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi vimNotation ctermfg=37 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi! link vimUserFunc Function
    hi gitcommitComment ctermfg=246 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi markdownHeadingDelimiter ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi markdownURL ctermfg=104 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi htmlItalic ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
    hi htmlBold ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
    hi htmlBoldItalic ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
    hi! link javascriptBraces Delimiter
    hi SyntasticErrorSign ctermfg=167 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SyntasticWarningSign ctermfg=173 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  endif
  if get(g:, 'wwdc16_no_italics', 0)
    hi Comment gui=NONE
    hi Folded gui=NONE
    if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
      hi gitcommitComment gui=NONE
      hi htmlItalic gui=NONE
      hi htmlBoldItalic gui=NONE,bold
    endif
  elseif get(g:, 'wwdc16_term_italics', 1)
    hi Comment cterm=italic
    hi Folded cterm=italic
    hi htmlItalic cterm=italic
    hi htmlBoldItalic cterm=NONE,bold,italic
    hi gitcommitComment cterm=italic
  endif
  finish
endif

" 16-color variant
let g:terminal_ansi_colors = ['#292c36', '#e64547', '#42a647', '#c98351', '#4670d8', '#d24e9b',
      \                         '#64878f', '#949494', '#353547', '#f84547', '#95c76f', '#efa16b',
      \                         '#5283ff', '#8485ce', '#00aba5', '#ffffff']

if !has('gui_running') && get(g:, 'wwdc16_transp_bg', 0)
  hi Normal ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=15 ctermbg=8 guifg=#ffffff guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=7 ctermbg=8 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=7 ctermbg=8 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#292c36 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=0 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=3 ctermbg=15 guifg=#c98351 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=15 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=2 ctermbg=15 guifg=#42a647 guibg=#ffffff guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=8 ctermbg=NONE guifg=#353547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=1 ctermbg=15 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=7 ctermbg=8 guifg=#949494 guibg=#353547 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=5 ctermbg=15 guifg=#d24e9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi MatchParen ctermfg=8 ctermbg=3 guifg=#353547 guibg=#c98351 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ModeMsg ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=0 ctermbg=6 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=8 ctermbg=8 guifg=#353547 guibg=#353547 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=15 ctermbg=3 guifg=#ffffff guibg=#c98351 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=8 ctermbg=3 guifg=#353547 guibg=#c98351 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=3 ctermbg=15 guifg=#c98351 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=#d24e9b cterm=NONE,underline gui=NONE,undercurl
hi StatusLine ctermfg=6 ctermbg=15 guifg=#64878f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=6 ctermbg=0 guifg=#64878f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=0 ctermbg=6 guifg=#292c36 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=15 ctermbg=6 guifg=#ffffff guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=15 ctermbg=6 guifg=#ffffff guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VertSplit ctermfg=8 ctermbg=6 guifg=#353547 guibg=#64878f guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=4 ctermbg=15 guifg=#4670d8 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#4670d8 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=15 ctermbg=5 guifg=#ffffff guibg=#d24e9b guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi Debug ctermfg=5 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=1 ctermbg=15 guifg=#e64547 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi Float ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=2 ctermbg=NONE guifg=#42a647 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=2 ctermbg=NONE guifg=#42a647 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Macro PreProc
hi Number ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link PreCondit PreProc
hi PreProc ctermfg=5 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=5 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=5 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=6 ctermbg=NONE guifg=#64878f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=10 ctermbg=NONE guifg=#95c76f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=5 ctermbg=NONE guifg=#d24e9b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=15 guifg=NONE guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#353547 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=6 ctermbg=8 guifg=#64878f guibg=#353547 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NormalMode ctermfg=7 ctermbg=15 guifg=#949494 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=10 ctermbg=0 guifg=#95c76f guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=3 ctermbg=0 guifg=#c98351 guibg=#292c36 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=4 ctermbg=15 guifg=#4670d8 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=5 ctermbg=15 guifg=#d24e9b guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=15 ctermbg=7 guifg=#ffffff guibg=#949494 guisp=NONE cterm=NONE gui=NONE
  let g:terminal_color_0='#292c36'
  let g:terminal_color_1='#e64547'
  let g:terminal_color_2='#42a647'
  let g:terminal_color_3='#c98351'
  let g:terminal_color_4='#4670d8'
  let g:terminal_color_5='#d24e9b'
  let g:terminal_color_6='#64878f'
  let g:terminal_color_7='#949494'
  let g:terminal_color_8='#353547'
  let g:terminal_color_9='#f84547'
  let g:terminal_color_10='#95c76f'
  let g:terminal_color_11='#efa16b'
  let g:terminal_color_12='#5283ff'
  let g:terminal_color_13='#8485ce'
  let g:terminal_color_14='#00aba5'
  let g:terminal_color_15='#ffffff'
endif
if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
  hi vimCommentTitle ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapModKey ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimMapMod ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimBracket ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimNotation ctermfg=14 ctermbg=NONE guifg=#00aba5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link vimUserFunc Function
  hi gitcommitComment ctermfg=7 ctermbg=NONE guifg=#949494 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi markdownHeadingDelimiter ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi markdownURL ctermfg=13 ctermbg=NONE guifg=#8485ce guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi htmlItalic ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi htmlBold ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi htmlBoldItalic ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold,italic
  hi! link javascriptBraces Delimiter
  hi SyntasticErrorSign ctermfg=1 ctermbg=NONE guifg=#e64547 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SyntasticWarningSign ctermfg=3 ctermbg=NONE guifg=#c98351 guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if get(g:, 'wwdc16_no_italics', 0)
  hi Comment gui=NONE
  hi Folded gui=NONE
  if get(g:, 'wwdc16_enable_syntax_hi_groups', 0)
    hi gitcommitComment gui=NONE
    hi htmlItalic gui=NONE
    hi htmlBoldItalic gui=NONE,bold
  endif
elseif get(g:, 'wwdc16_term_italics', 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
finish

" Color: black                rgb( 41,  44,  54)      ~        0
" Color: red                  rgb(230,  69,  71)      ~        1
" Color: green                rgb( 66, 166,  71)      ~        2
" Color: yellow               rgb(201, 131,  81)      ~        3
" Color: blue                 rgb( 70, 112, 216)      ~        4
" Color: magenta              rgb(210,  78, 155)      ~        5
" Color: cyan                 rgb(100, 135, 143)      ~        6
" Color: white                rgb(148, 148, 148)      ~        7
" Color: brightblack          rgb( 53,  53,  71)      237      8
" Color: brightred            rgb(248,  69,  71)      ~        9
" Color: brightgreen          rgb(149, 199, 111)      ~        10
" Color: brightyellow         rgb(239, 161, 107)      ~        11
" Color: brightblue           rgb( 82, 131, 255)      ~        12
" Color: brightmagenta        rgb(132, 133, 206)      ~        13
" Color: brightcyan           rgb(  0, 171, 165)      ~        14
" Color: brightwhite          rgb(255, 255, 255)      ~        15
" Background: dark
"     Normal               brightwhite       none
"     CursorLineNr         brightwhite       none
"     FoldColumn           white             none
"     LineNr               white             none
"     Terminal             brightwhite       none
"     Normal               brightwhite       black
"     CursorLineNr         brightwhite       brightblack
"     FoldColumn           white             brightblack
"     LineNr               white             brightblack
"     Terminal             brightwhite       black
" ColorColumn          none              brightblack
" Conceal              cyan              none
" Cursor               brightwhite       blue
" CursorColumn         none              brightblack
" CursorLine           none              brightblack
" DiffAdd              brightgreen       black             reverse
" DiffChange           yellow            brightwhite       reverse
" DiffDelete           red               brightwhite       reverse
" DiffText             green             brightwhite       bold,reverse
" Directory            brightgreen       none
" EndOfBuffer          brightblack       none
" ErrorMsg             red               brightwhite       reverse
" Folded               white             brightblack       g=italic
" IncSearch            magenta           brightwhite       t=reverse g=standout
" MatchParen           brightblack       yellow            bold,reverse
" ModeMsg              brightwhite       none
" MoreMsg              white             none
" NonText              brightwhite       none
" Pmenu                black             cyan
" PmenuSbar            brightblack       brightblack
" PmenuSel             brightwhite       yellow
" PmenuThumb           brightblack       yellow
" Question             white             none
" QuickFixLine     ->  Search
" Search               yellow            brightwhite       reverse
" SignColumn           white             none
" SpecialKey           white             none
" SpellBad             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellCap             brightmagenta     none              s=magenta t=underline g=undercurl
" SpellLocal           brightmagenta     none              s=magenta t=underline g=undercurl
" SpellRare            brightmagenta     none              s=magenta t=underline g=undercurl
" StatusLine           cyan              brightwhite       reverse
" StatusLineNC         cyan              black             reverse
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" TabLine              black             cyan
" TabLineFill          brightwhite       cyan
" TabLineSel           brightwhite       cyan
" Title                yellow            none              bold
" VertSplit            brightblack       cyan
" Visual               blue              brightwhite       reverse
" VisualNOS            brightwhite       blue
" WarningMsg           red               none
" WildMenu             brightwhite       magenta
" Boolean              brightgreen       none
" Character            yellow            none
" Comment              white             none              g=italic
" Conditional       -> Statement
" Constant             yellow            none
" Define            -> PreProc
" Debug                magenta           none
" Delimiter            brightwhite       none
" Error                red               brightwhite       reverse
" Exception         -> Statement
" Float                brightgreen       none
" Function             green             none
" Identifier           brightcyan        none
" Ignore               brightwhite       none
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
" CursorIM             none              brightwhite
" ToolbarLine          none              brightblack
" ToolbarButton        cyan              brightblack       bold
" NormalMode           white             brightwhite       reverse
" InsertMode           brightgreen       black             reverse
" ReplaceMode          yellow            black             reverse
" VisualMode           blue              brightwhite       reverse
" CommandMode          magenta           brightwhite       reverse
" TermCursor        -> Cursor
" TermCursorNC         brightwhite       white
" vimCommentTitle      red               none
" vimMapModKey         yellow            none
" vimMapMod            yellow            none
" vimBracket           brightcyan        none
" vimNotation          brightcyan        none
" vimUserFunc       -> Function
" gitcommitComment     white             none              g=italic
" markdownHeadingDelimiter yellow        none
" markdownURL          brightmagenta     none
" htmlItalic           brightwhite       none              g=italic
" htmlBold             brightwhite       none              bold
" htmlBoldItalic       brightwhite       none              bold g=italic
" javascriptBraces  -> Delimiter
" SyntasticErrorSign   red               none
" SyntasticWarningSign yellow            none
