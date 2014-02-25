" Syntax highlighting
syntax on

" Auto-indent
filetype indent plugin on

" Indentation config (4 spaces, good for Python, 
" looks good elsewhere)
set tabstop=8              " sets tabstops to 8 chars wide
set expandtab              " converts tabs to whitespace
set shiftwidth=4           " <TAB> indents with four spaces
set softtabstop=4          " sets autoindent width

" Adjusts colors for dark background
set background=dark

" Always show current position
set ruler

" Backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets which cursor is over
" Blink for 2/10s
set showmatch
set mat=2

" Set utf8 as standard encoding and en_US as standard
" language
set encoding=utf8

" Use Unix as standard filetype, followed by Mac and Win
set ffs=unix,mac,dos

" Delete trailing whitespace on save, for Python
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal 'z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Status line config
" CWD - curr_file filetype col curr_line/total_lines
set laststatus=2
set statusline=%{getcwd()}\ -\ %f%m%r\ %y\ %c\ %l/%L
