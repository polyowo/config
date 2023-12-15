set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

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
map <C-s> :wall<cr>:silent exec "!rm Session.vim > /dev/null"<cr>:tabdo windo NERDTreeClose<cr>:mksession Session.vim<cr>:redraw!<cr>
map <S-Up>  :vertical resize +10<cr>
map <S-Down>  :vertical resize -10<cr>
map <C-a> :source Session.vim<cr>
map <S><TAB> <TAB>

inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap { {<Cr>}<Esc>O
autocmd VimEnter * syntax on
autocmd VimEnter * set ai
autocmd VimEnter * set expandtab
autocmd VimEnter * set tabstop=4
autocmd VimEnter * set shiftwidth=4
autocmd VimEnter * set number
inoremap <TAB> <Space><Space><Space><Space>
set relativenumber

let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>
