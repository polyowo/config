set nocompatible              " be iMproved, required
filetype off                  " required

packadd YouCompleteMe

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()


call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'

" Initialize plugin system
call plug#end()

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

let g:ycm_show_diagnostics_ui = 0
map <F2> :NERDTreeToggle<cr>
map <C-s> :w<cr>:!rm Session.vim<cr>:tabdo windo NERDTreeClose<cr>:mksession Session.vim<cr>
map <S-Up>  :vertical resize +10<cr>
map <S-Down>  :vertical resize -10<cr>
map <C-v> :source Session.vim<cr>

inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap { {<Cr>}<Esc>O
autocmd VimEnter * syntax on
autocmd VimEnter * set ai
autocmd VimEnter * colorscheme seoul256
autocmd VimEnter * set expandtab
autocmd VimEnter * set tabstop=4
autocmd VimEnter * set shiftwidth=4
autocmd VimEnter * set number
map <S-j> gt
map <C-j> gT
map <C-k> :tabnew<cr><F2>
map <S-k> :tabc!<cr>
inoremap <TAB> <Space><Space><Space><Space>

