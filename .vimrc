set nocompatible              " be iMproved, required
filetype off                  " required

packadd YouCompleteMe

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required



call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'

" Initialize plugin system
call plug#end()



map <F2> :NERDTreeToggle<cr>
map <C-s> :w<cr>
map <S-Up>  :vertical resize +10<cr>
map <S-Down>  :vertical resize -10<cr>
map s :w<cr>
inoremap (<TAB> ()<ESC>i
inoremap "<TAB> ""<ESC>i
inoremap '<TAB> ''<ESC>i
inoremap {<TAB> {<Cr>}<Esc>O
autocmd VimEnter * syntax on
autocmd VimEnter * colorscheme seoul256
map <S-j> gt
map <C-j> gT
map <C-k> :tabnew<cr><F2>
map <S-k> :tabc!<cr>
inoremap <TAB> <Space><Space><Space><Space>

