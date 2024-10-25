set nocompatible              " be iMproved, required
filetype plugin indent on    " required
set encoding=utf-8
set noswapfile
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
"   Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'tpope/vim-speeddating'
call vundle#end()            " required

execute pathogen#infect()

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'catppuccin/vim', { 'as': 'catppuccin' }
    Plug 'junegunn/fzf.vim'
    Plug 'jceb/vim-orgmode'
call plug#end()

" autocomplete
set completeopt=menuone,noinsert,noselect,preview
set completeopt-=preview

" set theme
" set termguicolors 
" colorscheme catppuccin_mocha
colorscheme ron

" comment code function
vnoremap <C-_> :call CommentCode()<cr>

function! CommentCode()
    let commentChar = ""
    let commentChar .= input('')
    let commentChar = substitute(commentChar, '/', '\\/', 'g')
    :silent exe "'<,'>s/^/".commentChar."/"
endfunction

" etc.
autocmd VimEnter * syntax on
autocmd VimEnter * set ai
autocmd VimEnter * set expandtab
autocmd VimEnter * set tabstop=4
autocmd VimEnter * set shiftwidth=4
autocmd VimEnter * set number
inoremap <TAB> <Space><Space><Space><Space>
set relativenumber
set clipboard=unnamedplus
syntax on
vnoremap <C-c> "+y
vnoremap <C-x> "_x
set scrolloff=999
nnoremap <TAB> gt
nnoremap <S-TAB> gT
nnoremap [[ :Files<CR>
nnoremap ]] :Buffer<CR>
set mouse=a

" tab mappings
nnoremap ) :tabnew<CR>
nnoremap ( :tabc<CR>

" tmux-vim integration
" let g:tmux_navigator_no_mappings = 1
" noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
" noremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
" noremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
" noremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>

