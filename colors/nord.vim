" Name: nord (custom lightweight variant)
" Maintainer: local vimrc

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'nord'

set background=dark

hi Normal       ctermfg=253 ctermbg=235 guifg=#d8dee9 guibg=#2e3440
hi CursorLine   cterm=NONE ctermbg=236 gui=NONE guibg=#3b4252
hi CursorColumn cterm=NONE ctermbg=236 gui=NONE guibg=#3b4252
hi LineNr       ctermfg=240 ctermbg=235 guifg=#4c566a guibg=#2e3440
hi CursorLineNr ctermfg=223 ctermbg=236 guifg=#e5e9f0 guibg=#3b4252
hi VertSplit    ctermfg=240 ctermbg=235 guifg=#434c5e guibg=#2e3440
hi StatusLine   cterm=bold ctermfg=253 ctermbg=238 gui=bold guifg=#d8dee9 guibg=#434c5e
hi StatusLineNC cterm=NONE ctermfg=246 ctermbg=236 gui=NONE guifg=#a3be8c guibg=#3b4252
hi Visual       cterm=NONE ctermbg=238 gui=NONE guibg=#434c5e

hi Comment      cterm=italic ctermfg=109 gui=italic guifg=#81a1c1
hi Constant     ctermfg=181 guifg=#b48ead
hi String       ctermfg=108 guifg=#a3be8c
hi Character    ctermfg=108 guifg=#a3be8c
hi Number       ctermfg=216 guifg=#d08770
hi Boolean      ctermfg=216 guifg=#d08770
hi Identifier   ctermfg=110 guifg=#88c0d0
hi Function     ctermfg=117 guifg=#8fbcbb
hi Statement    ctermfg=81  gui=bold guifg=#81a1c1
hi Conditional  ctermfg=81  gui=bold guifg=#81a1c1
hi Repeat       ctermfg=81  gui=bold guifg=#81a1c1
hi Operator     ctermfg=223 guifg=#e5e9f0
hi Keyword      ctermfg=81  gui=bold guifg=#81a1c1
hi PreProc      ctermfg=181 guifg=#b48ead
hi Type         ctermfg=152 guifg=#8fbcbb
hi Special      ctermfg=216 guifg=#d08770
hi Underlined   cterm=underline ctermfg=117 gui=underline guifg=#8fbcbb
hi Todo         cterm=bold ctermfg=235 ctermbg=150 gui=bold guifg=#2e3440 guibg=#a3be8c
hi Error        cterm=bold ctermfg=231 ctermbg=167 gui=bold guifg=#eceff4 guibg=#bf616a

hi Search       cterm=NONE ctermfg=235 ctermbg=152 gui=NONE guifg=#2e3440 guibg=#8fbcbb
hi IncSearch    cterm=bold ctermfg=235 ctermbg=216 gui=bold guifg=#2e3440 guibg=#d08770
hi Pmenu        ctermfg=253 ctermbg=236 guifg=#d8dee9 guibg=#3b4252
hi PmenuSel     cterm=bold ctermfg=235 ctermbg=117 gui=bold guifg=#2e3440 guibg=#8fbcbb

hi DiffAdd      ctermfg=108 ctermbg=236 guifg=#a3be8c guibg=#3b4252
hi DiffChange   ctermfg=181 ctermbg=236 guifg=#b48ead guibg=#3b4252
hi DiffDelete   ctermfg=167 ctermbg=236 guifg=#bf616a guibg=#3b4252
hi DiffText     cterm=bold ctermfg=223 ctermbg=238 gui=bold guifg=#e5e9f0 guibg=#434c5e
