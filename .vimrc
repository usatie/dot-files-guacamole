filetype plugin indent on

set encoding=utf-8
syntax on
set autoindent
set number
set viminfo='100,<200,s10,h

call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'

call plug#end()

" 42 Header
let g:user42 = 'susami'
let g:mail42 = 'susami@student.42tokyo.jp'
:autocmd BufNewFile *.c,*.h,Makefile,*.sh Stdheader
:autocmd BufNewFile *.c normal i#include "libft.h"

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0
