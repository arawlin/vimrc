"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""" NERDTree

" Keep NERDTree lightweight and practical for daily use.
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '^\.DS_Store$']

" Open NERDTree automatically when starting Vim with a directory.
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
