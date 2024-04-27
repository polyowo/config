set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set noswapfile

packadd YouCompleteMe
packadd vim-cpp-modern

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug 'jceb/vim-orgmode'

" Initialize plugin system
call plug#end()

" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

let g:ycm_show_diagnostics_ui = 0
map <F2> :NERDTreeToggle<cr>
map <C-s> :call SaveSession()<cr>
map <C-a> :source Session.vim<cr>
vnoremap <C-_> :call CommentCode()<cr>

function! SaveSession()
"    let currentTab = string(tabpagenr())
"    :wall
"    :silent exec "!rm Session.vim > /dev/null"
"    :tabdo windo NERDTreeClose
"    :exe "normal ".  currentTab. "gt" 
"    :mksession Session.vim
"    :redraw!
"    :echo 'session saved!'
    :wall
endfunction

function! ReplaceSlash(str)
    return substitute(a:str, '/', '\\/', 'g')
endfunction

function! CommentCode()
    let commentChar = ""
    let commentChar .= input('')
    let commentChar = ReplaceSlash(commentChar)
    :silent exe "'<,'>s/^/".commentChar."/"
endfunction

"inoremap ( ()<ESC>i
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap { {<Cr>}<Esc>O
autocmd VimEnter * syntax on
autocmd VimEnter * set ai
autocmd VimEnter * set expandtab
autocmd VimEnter * set tabstop=4
autocmd VimEnter * set shiftwidth=4
autocmd VimEnter * set number
inoremap <TAB> <Space><Space><Space><Space>
set relativenumber
set clipboard=unnamedplus
vnoremap <C-c> "+y
vnoremap <C-x> "_x
set scrolloff=999
"set foldmethod=indent
"set foldlevel=0

let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>
