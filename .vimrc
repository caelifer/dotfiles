" Integrate with system clipboard (for Vim on Mac must use "unnamed" register)
set clipboard+=unnamed
set rtp+=/opt/homebrew/opt/fzf

" Default editing style
set textwidth=132
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set relativenumber
set cursorline
set splitbelow
set splitright

" Visual style
set background=dark
set termguicolors
syntax enable
colorscheme jellybeans
" colorscheme catppuccin_mocha

"""""""""""""""""""
" Custom commands "
"""""""""""""""""""
" Run terminal in new vertical split to the right
command! VT vertical terminal

""""""""""""""""""
"  Abbreviations "
""""""""""""""""""
cab vterm vertical terminal
