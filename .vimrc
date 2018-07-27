" Color scheme settings
colorscheme falcon
set background=dark

if has ('nvim')
	set termguicolors
endif

" Custom cursor line
hi CursorLine  cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" Set proper terminal
if &term =~ "xterm"
	let &t_Co = 256
	let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
	let &t_te = "\<Esc>[?47l\<Esc>8"
	if has("terminfo")
		let &t_Sf = "\<Esc>[3%p1%dm"
		let &t_Sb = "\<Esc>[4%p1%dm"
	else
		let &t_Sf = "\<Esc>[3%dm"
		let &t_Sb = "\<Esc>[4%dm"
	endif
endif

set showmatch
set wrap!
set number
set relativenumber
set numberwidth=6
set formatoptions+=o
set tabstop=4
set shiftwidth=4
set nojoinspaces
set ttimeoutlen=50
set linespace=3
set ignorecase
set smartcase
set cursorline


nnoremap ; :
nnoremap Q @q
nnoremap <C-l> gt
nnoremap <C-h> gT

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Eighties COnfiguration
let g:eighties_enabled = 1
let g:eighties_minimum_width = 80
let g:eighties_extra_width = 0 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum +extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame'] " Defaults to [], 'fugitiveblame' is only an example. Takes a comma delimited list of bufnames as strings.

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'rainglow/vim'
Plug 'chriskempson/base16-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'justincampbell/vim-eighties'
Plug 'tpope/vim-vinegar'
Plug 'sbdchd/vim-shebang'
call plug#end()

