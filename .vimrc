set nocompatible
filetype off

" Set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle:
Plugin 'VundleVim/Vundle.vim'

" Installed plugins:
Plugin 'scrooloose/nerdtree'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

"
" -------- YouCompleteMe configuration{{{
" Rust source code path:
let g:ycm_rust_src_path = $RUST_SOURCE_CODE_PATH
let g:ycm_filetype_blacklist = {'tex': 1, 'markdown': 1}
" }}}

" -------- Syntastic configuration {{{
let g:syntastic_javascript_checkers = ['eslint']
" See http://stackoverflow.com/questions/7233005/how-to-configure-syntastic-with-jshint
" Make syntastic python linter understand python3:
let g:syntastic_python_python_exec = '/usr/bin/python3'


" Rust syntastic fix from 
" https://github.com/rust-lang/rust.vim/issues/130 :
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']
" let g:syntastic_debug = 1
" let g:syntastic_debug_file = "~/syntastic.log" 
" }}}


syntax on

" -------- Explorer configuration {{{
" Exploring a directory will change the present working directory.
	let g:netrw_keepdir= 0 
" }}}

" -------- Adding a ruler {{{
"  A ruler in the botton of vim.
set ruler
"  }}}


" ------- Making backspace behave normally {{{
"  backspace regular behaviour

set backspace=indent,eol,start
"  }}}

" ------- Color Scheme {{{
" colorscheme darkblue
" }}}

" ------- Leader keys {{{
" Set leader key for global scripts:
let mapleader = "-"
" set local leader key for specific file type scripts:
" Note: It is set to \, the other \ is for escaping.
let maplocalleader = "\\"
" }}}

" ------- tabs and spaces {{{

" Take care of indentation. See http://vimcasts.org/e/2
" ts -- tabstop
" sts -- soft tab stop
" sw -- shift width.
" set ts=2 sts=2 sw=2 expandtab
" }}}

set expandtab

" ----------- Buffers {{{
" Make sure vim doesn't ask me to save before swapping between buffers:
set hidden
" }}}

" ----------- remmapping the ESC key {{{
" Map jk in insert mode to <Esc> -- go back to normal mode.
inoremap jk <Esc>
" }}}

" -------- Search options {{{
"  highlight search:
"  No highlighting for every search:
set hlsearch
" Enable incremental search: (Incrementally show results for searches.
set incsearch
" Disable temporarily the highligh search option.
" Note that it will be back after the next search. (If hlsearch is enabled)
nnoremap <leader>vf :nohlsearch<cr>
"  }}}

" ---------- cwindow options {{{
"  Mapping for :cnext and :cprevious.
"  These are used to traverse the cwindow results 
"  (For example: results from the grep command, or from make command)
nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cp :cprevious<cr>
"  }}}


" ---------------- Vimscript file settings  {{{
" open a split window to edit the vimrc file:
nnoremap <leader>ev :split $MYVIMRC<cr>
" source the vimrc file. (Run it):
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" ---------------- Disable folding  {{{
set nofoldenable    " disable folding
" }}}
