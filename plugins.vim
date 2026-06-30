"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""" NERDTree

" Keep NERDTree lightweight and practical for daily use.
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 0
let g:NERDTreeIgnore = [
\ '^\.git$',
\ '\~$',
\ '^\.DS_Store$'
\ ]

" Reduce git-status refresh overhead in large repositories.
let g:NERDTreeGitStatusUpdateOnCursorHold = 0
let g:NERDTreeGitStatusUpdateOnWrite = 0
let g:NERDTreeGitStatusCwdOnly = 1
let g:NERDTreeGitStatusDirDirtyOnly = 1

" Open NERDTree manually with Ctrl-n (disabled auto-open for faster startup).
augroup vimrc_nerdtree_startup
	autocmd!
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
augroup END

" toggle
nnoremap <C-n> :NERDTreeToggle<CR>


""""""""""""""""" CtrlP

" Keep project-root behavior while improving file indexing speed.
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Ignore heavy or generated paths to speed up filtering.
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\\/]\.(git|hg|svn)$|\v[\\/](node_modules|dist|build|target)$',
\ 'file': '\v\.(exe|so|dll|class|pyc)$'
\ }

" Prefer ripgrep/ag for faster source discovery when available.
if executable('rg')
	let g:ctrlp_user_command = 'rg --files --hidden --glob "!.git" %s'
elseif executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif


""""""""""""""""" NERDCommenter

" Keep comments tidy while preserving default key mappings.
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1


""""""""""""""""" vim-fugitive

" Minimal Git mappings for terminal-first workflow.
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Git log -- %<CR>

"""""""""""""""""" lightline

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'LightlineGitBranch',
      \   'filename': 'LightlineFilename'
      \ },
      \ }

function! LightlineGitBranch()
  if exists('*FugitiveHead')
    let l:branch = FugitiveHead()
    return l:branch !=# '' ? 'git:' . l:branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  let l:fname = expand('%:t')
  if l:fname =~# 'NERD_tree'
    return 'NERDTree'
  endif
  return l:fname !=# '' ? l:fname : '[No Name]'
endfunction