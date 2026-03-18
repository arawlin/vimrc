" Name: gruvbox (custom lightweight variant)
" Maintainer: local vimrc

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'gruvbox'

set background=dark

hi Normal       ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#282828
hi CursorLine   cterm=NONE ctermbg=236 gui=NONE guibg=#32302f
hi CursorColumn cterm=NONE ctermbg=236 gui=NONE guibg=#32302f
hi LineNr       ctermfg=239 ctermbg=235 guifg=#665c54 guibg=#282828
hi CursorLineNr ctermfg=214 ctermbg=236 guifg=#fabd2f guibg=#32302f
hi VertSplit    ctermfg=239 ctermbg=235 guifg=#665c54 guibg=#282828
hi StatusLine   cterm=bold ctermfg=223 ctermbg=239 gui=bold guifg=#ebdbb2 guibg=#504945
hi StatusLineNC cterm=NONE ctermfg=246 ctermbg=237 gui=NONE guifg=#a89984 guibg=#3c3836
hi Visual       cterm=NONE ctermbg=239 gui=NONE guibg=#504945

hi Comment      cterm=italic ctermfg=245 gui=italic guifg=#928374
hi Constant     ctermfg=175 guifg=#d3869b
hi String       ctermfg=142 guifg=#b8bb26
hi Character    ctermfg=142 guifg=#b8bb26
hi Number       ctermfg=208 guifg=#fe8019
hi Boolean      ctermfg=208 guifg=#fe8019
hi Identifier   ctermfg=109 guifg=#83a598
hi Function     ctermfg=214 guifg=#fabd2f
hi Statement    ctermfg=167 gui=bold guifg=#fb4934
hi Conditional  ctermfg=167 gui=bold guifg=#fb4934
hi Repeat       ctermfg=167 gui=bold guifg=#fb4934
hi Operator     ctermfg=214 guifg=#fabd2f
hi Keyword      ctermfg=167 gui=bold guifg=#fb4934
hi PreProc      ctermfg=175 guifg=#d3869b
hi Type         ctermfg=108 guifg=#8ec07c
hi Special      ctermfg=172 guifg=#d79921
hi Underlined   cterm=underline ctermfg=109 gui=underline guifg=#83a598
hi Todo         cterm=bold ctermfg=235 ctermbg=214 gui=bold guifg=#282828 guibg=#fabd2f
hi Error        cterm=bold ctermfg=231 ctermbg=167 gui=bold guifg=#fbf1c7 guibg=#cc241d

hi Search       cterm=NONE ctermfg=235 ctermbg=214 gui=NONE guifg=#282828 guibg=#fabd2f
hi IncSearch    cterm=bold ctermfg=235 ctermbg=208 gui=bold guifg=#282828 guibg=#fe8019
hi Pmenu        ctermfg=223 ctermbg=237 guifg=#ebdbb2 guibg=#3c3836
hi PmenuSel     cterm=bold ctermfg=235 ctermbg=214 gui=bold guifg=#282828 guibg=#fabd2f

hi DiffAdd      ctermfg=108 ctermbg=236 guifg=#8ec07c guibg=#32302f
hi DiffChange   ctermfg=214 ctermbg=236 guifg=#fabd2f guibg=#32302f
hi DiffDelete   ctermfg=167 ctermbg=236 guifg=#fb4934 guibg=#32302f
hi DiffText     cterm=bold ctermfg=208 ctermbg=239 gui=bold guifg=#fe8019 guibg=#504945
