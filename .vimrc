map <F2> :NERDTreeToggle<cr>
map <C-s> :w<cr>
map <S-Up>  :vertical resize +10<cr>
map <S-Down>  :vertical resize -10<cr>
map s :w<cr>
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap { {<Cr>}<Esc>O
autocmd VimEnter * syntax on