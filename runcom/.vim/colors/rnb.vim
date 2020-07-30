" rnb.vim -- Vim color scheme.
" Author:      foo (foo@foo.foo)
" Webpage:     http://www.example.com
" Description: Lorem ipsum dolor sit amet.
" Last Change: 2020-05-23

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "rnb"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#fafafa gui=NONE
    hi NonText ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Comment ctermbg=0 ctermfg=7 cterm=NONE guibg=#000000 guifg=#666666 gui=NONE
    hi Constant ctermbg=0 ctermfg=3 cterm=NONE guibg=#000000 guifg=#FFD600 gui=NONE
    hi Error ctermbg=0 ctermfg=9 cterm=reverse guibg=#000000 guifg=#F93B1D gui=reverse
    hi Identifier ctermbg=0 ctermfg=12 cterm=bold guibg=#000000 guifg=#00B0FF gui=bold
    hi Ignore ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi PreProc ctermbg=0 ctermfg=2 cterm=NONE guibg=#000000 guifg=#00C853 gui=NONE
    hi Special ctermbg=0 ctermfg=9 cterm=NONE guibg=#000000 guifg=#F93B1D gui=NONE
    hi Statement ctermbg=0 ctermfg=2 cterm=NONE guibg=#000000 guifg=#00C853 gui=NONE
    hi String ctermbg=0 ctermfg=9 cterm=NONE guibg=#000000 guifg=#F93B1D gui=NONE
    hi Number ctermbg=0 ctermfg=13 cterm=bold guibg=#000000 guifg=#E040FB gui=bold
    hi Todo ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Type ctermbg=0 ctermfg=12 cterm=bold,underline guibg=#000000 guifg=#00B0FF gui=bold,underline
    hi Underlined ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi StatusLine ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi VertSplit ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi TabLine ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi TabLineFill ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi TabLineSel ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Title ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi CursorLine ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi LineNr ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi CursorLineNr ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi helpLeadBlank ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi helpNormal ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Visual ctermbg=8 ctermfg=NONE cterm=NONE guibg=#444444 guifg=NONE gui=NONE
    hi VisualNOS ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Pmenu ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi PmenuSbar ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi PmenuSel ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi PmenuThumb ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi FoldColumn ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Folded ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi WildMenu ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi SpecialKey ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi DiffAdd ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi DiffChange ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi DiffDelete ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi DiffText ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi IncSearch ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Search ctermbg=11 ctermfg=0 cterm=NONE guibg=#FFFF00 guifg=#000000 gui=NONE
    hi Directory ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi MatchParen ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi SpellBad ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE guisp=#F93B1D
    hi SpellCap ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE guisp=#00B0FF
    hi SpellLocal ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE guisp=#E040FB
    hi SpellRare ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE guisp=#00E5FF
    hi ColorColumn ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi SignColumn ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi ErrorMsg ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi ModeMsg ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi MoreMsg ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Question ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Cursor ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi CursorColumn ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi QuickFixLine ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi Conceal ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi ToolbarLine ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi ToolbarButton ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi debugPC ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE
    hi debugBreakpoint ctermbg=0 ctermfg=8 cterm=NONE guibg=#000000 guifg=#444444 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=black ctermfg=white cterm=NONE
    hi NonText ctermbg=black ctermfg=darkgray cterm=NONE
    hi Comment ctermbg=black ctermfg=gray cterm=NONE
    hi Constant ctermbg=black ctermfg=darkyellow cterm=NONE
    hi Error ctermbg=black ctermfg=red cterm=reverse
    hi Identifier ctermbg=black ctermfg=blue cterm=bold
    hi Ignore ctermbg=black ctermfg=darkgray cterm=NONE
    hi PreProc ctermbg=black ctermfg=darkgreen cterm=NONE
    hi Special ctermbg=black ctermfg=red cterm=NONE
    hi Statement ctermbg=black ctermfg=darkgreen cterm=NONE
    hi String ctermbg=black ctermfg=red cterm=NONE
    hi Number ctermbg=black ctermfg=magenta cterm=bold
    hi Todo ctermbg=black ctermfg=darkgray cterm=NONE
    hi Type ctermbg=black ctermfg=blue cterm=bold,underline
    hi Underlined ctermbg=black ctermfg=darkgray cterm=NONE
    hi StatusLine ctermbg=black ctermfg=darkgray cterm=NONE
    hi StatusLineNC ctermbg=black ctermfg=darkgray cterm=NONE
    hi VertSplit ctermbg=black ctermfg=darkgray cterm=NONE
    hi TabLine ctermbg=black ctermfg=darkgray cterm=NONE
    hi TabLineFill ctermbg=black ctermfg=darkgray cterm=NONE
    hi TabLineSel ctermbg=black ctermfg=darkgray cterm=NONE
    hi Title ctermbg=black ctermfg=darkgray cterm=NONE
    hi CursorLine ctermbg=black ctermfg=darkgray cterm=NONE
    hi LineNr ctermbg=black ctermfg=darkgray cterm=NONE
    hi CursorLineNr ctermbg=black ctermfg=darkgray cterm=NONE
    hi helpLeadBlank ctermbg=black ctermfg=darkgray cterm=NONE
    hi helpNormal ctermbg=black ctermfg=darkgray cterm=NONE
    hi Visual ctermbg=darkgray ctermfg=NONE cterm=NONE
    hi VisualNOS ctermbg=black ctermfg=darkgray cterm=NONE
    hi Pmenu ctermbg=black ctermfg=darkgray cterm=NONE
    hi PmenuSbar ctermbg=black ctermfg=darkgray cterm=NONE
    hi PmenuSel ctermbg=black ctermfg=darkgray cterm=NONE
    hi PmenuThumb ctermbg=black ctermfg=darkgray cterm=NONE
    hi FoldColumn ctermbg=black ctermfg=darkgray cterm=NONE
    hi Folded ctermbg=black ctermfg=darkgray cterm=NONE
    hi WildMenu ctermbg=black ctermfg=darkgray cterm=NONE
    hi SpecialKey ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffChange ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=darkgray cterm=NONE
    hi DiffText ctermbg=black ctermfg=darkgray cterm=NONE
    hi IncSearch ctermbg=black ctermfg=darkgray cterm=NONE
    hi Search ctermbg=yellow ctermfg=black cterm=NONE
    hi Directory ctermbg=black ctermfg=darkgray cterm=NONE
    hi MatchParen ctermbg=black ctermfg=darkgray cterm=NONE
    hi SpellBad ctermbg=black ctermfg=darkgray cterm=NONE
    hi SpellCap ctermbg=black ctermfg=darkgray cterm=NONE
    hi SpellLocal ctermbg=black ctermfg=darkgray cterm=NONE
    hi SpellRare ctermbg=black ctermfg=darkgray cterm=NONE
    hi ColorColumn ctermbg=black ctermfg=darkgray cterm=NONE
    hi SignColumn ctermbg=black ctermfg=darkgray cterm=NONE
    hi ErrorMsg ctermbg=black ctermfg=darkgray cterm=NONE
    hi ModeMsg ctermbg=black ctermfg=darkgray cterm=NONE
    hi MoreMsg ctermbg=black ctermfg=darkgray cterm=NONE
    hi Question ctermbg=black ctermfg=darkgray cterm=NONE
    hi Cursor ctermbg=black ctermfg=darkgray cterm=NONE
    hi CursorColumn ctermbg=black ctermfg=darkgray cterm=NONE
    hi QuickFixLine ctermbg=black ctermfg=darkgray cterm=NONE
    hi Conceal ctermbg=black ctermfg=darkgray cterm=NONE
    hi ToolbarLine ctermbg=black ctermfg=darkgray cterm=NONE
    hi ToolbarButton ctermbg=black ctermfg=darkgray cterm=NONE
    hi debugPC ctermbg=black ctermfg=darkgray cterm=NONE
    hi debugBreakpoint ctermbg=black ctermfg=darkgray cterm=NONE
endif

hi link EndOfBuffer NonText
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal

let g:terminal_ansi_colors = [
        \ '#000000',
        \ '#D50000',
        \ '#00C853',
        \ '#FFD600',
        \ '#2962FF',
        \ '#AA00FF',
        \ '#00B8D4',
        \ '#666666',
        \ '#444444',
        \ '#F93B1D',
        \ '#00E676',
        \ '#FFFF00',
        \ '#00B0FF',
        \ '#E040FB',
        \ '#00E5FF',
        \ '#fafafa',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
