" Name: onedark (custom lightweight variant)
" Maintainer: local vimrc

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'onedark'

set background=dark

hi Normal       ctermfg=252 ctermbg=235 guifg=#abb2bf guibg=#282c34
hi CursorLine   cterm=NONE ctermbg=236 gui=NONE guibg=#2c323c
hi CursorColumn cterm=NONE ctermbg=236 gui=NONE guibg=#2c323c
hi LineNr       ctermfg=240 ctermbg=235 guifg=#4b5263 guibg=#282c34
hi CursorLineNr ctermfg=221 ctermbg=236 guifg=#e5c07b guibg=#2c323c
hi VertSplit    ctermfg=239 ctermbg=235 guifg=#3e4452 guibg=#282c34
hi StatusLine   cterm=bold ctermfg=252 ctermbg=239 gui=bold guifg=#abb2bf guibg=#3e4452
hi StatusLineNC cterm=NONE ctermfg=246 ctermbg=236 gui=NONE guifg=#7f848e guibg=#2c323c
hi Visual       cterm=NONE ctermbg=239 gui=NONE guibg=#3e4452

hi Comment      cterm=italic ctermfg=244 gui=italic guifg=#5c6370
hi Constant     ctermfg=175 guifg=#c678dd
hi String       ctermfg=114 guifg=#98c379
hi Character    ctermfg=114 guifg=#98c379
hi Number       ctermfg=173 guifg=#d19a66
hi Boolean      ctermfg=173 guifg=#d19a66
hi Identifier   ctermfg=117 guifg=#56b6c2
hi Function     ctermfg=223 guifg=#e5c07b
hi Statement    ctermfg=111 gui=bold guifg=#61afef
hi Conditional  ctermfg=111 gui=bold guifg=#61afef
hi Repeat       ctermfg=111 gui=bold guifg=#61afef
hi Operator     ctermfg=252 guifg=#abb2bf
hi Keyword      ctermfg=111 gui=bold guifg=#61afef
hi PreProc      ctermfg=175 guifg=#c678dd
hi Type         ctermfg=151 guifg=#56b6c2
hi Special      ctermfg=204 guifg=#e06c75
hi Underlined   cterm=underline ctermfg=111 gui=underline guifg=#61afef
hi Todo         cterm=bold ctermfg=235 ctermbg=221 gui=bold guifg=#282c34 guibg=#e5c07b
hi Error        cterm=bold ctermfg=231 ctermbg=167 gui=bold guifg=#ffffff guibg=#e06c75

hi Search       cterm=NONE ctermfg=235 ctermbg=114 gui=NONE guifg=#282c34 guibg=#98c379
hi IncSearch    cterm=bold ctermfg=235 ctermbg=173 gui=bold guifg=#282c34 guibg=#d19a66
hi Pmenu        ctermfg=252 ctermbg=236 guifg=#abb2bf guibg=#2c323c
hi PmenuSel     cterm=bold ctermfg=235 ctermbg=111 gui=bold guifg=#282c34 guibg=#61afef

hi DiffAdd      ctermfg=114 ctermbg=236 guifg=#98c379 guibg=#2c323c
hi DiffChange   ctermfg=111 ctermbg=236 guifg=#61afef guibg=#2c323c
hi DiffDelete   ctermfg=167 ctermbg=236 guifg=#e06c75 guibg=#2c323c
hi DiffText     cterm=bold ctermfg=223 ctermbg=239 gui=bold guifg=#e5c07b guibg=#3e4452
