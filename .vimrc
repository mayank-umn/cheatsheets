" run bash/zsh in vi mode:
" printf '%s\n' '# Enable Vi key bindings' 'set -o vi' >> ~/.bashrc
" printf '%s\n' '# Enable Vi key bindings' 'set -o vi' >> ~/.zshrc
" http://unix.stackexchange.com/questions/547/make-my-zsh-prompt-show-mode-in-vi-mode

syntax on
set encoding=utf-8
set tabstop=8
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set statusline+=%F
" execute pathogen#infect()

" vimtutor
" from https://danielmiessler.com/study/vim/ :
noremap zz <Esc>:w<CR>
inoremap jk <ESC>

" frequent cmds:
" copy/paste of code block: shift-V, y, shift-P
" cut/paste: like copy but with d instead of y
" :set paste

" to turn barely readable darkblue comment on black background
" into readable lightblue:
:color desert

" from http://vim.rtorr.com/:
" 0 ^ $ to navigate begin/end line
" b(ack) w(word) like ctrl-left/right word navigation
" o(pen) to insert/open line below cursor
" O(pen) to insert/open line above cursor
" I(nsert) at begin of line
" i(insert) before cursor
" a(ppend) after cursor
" 123G to jump to line, ctrl-G to show line&file
" u(ndo) ctrl-r(edo)

" switch between .cpp and .h with :A
" http://www.vim.org/scripts/script.php?script_id=31

" https://github.com/Valloric/YouCompleteMe for C++ completion
" via clang

" to scroll before reaching last line (5..999)
:set scrolloff=5

" http://stackoverflow.com/questions/1747091/how-do-you-use-vims-quickfix-feature
set makeprg=make

" more intuitive page up/down with ctrl jk
nnoremap <C-j> <C-f>
nnoremap <C-k> <C-b>

" swap colon and semicolon (in normal mode only)
nnoremap ; :
nnoremap : ;

" faster :b#
nnoremap <TAB> :b#<CR>

" rm trailing whitespace
autocmd BufWritePre *.pl :%s/\s\+$//e
