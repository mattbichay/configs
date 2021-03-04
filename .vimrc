set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin '907th/vim-auto-save'
Plugin 'matschaffer/vim-islime2'
Plugin 'julialang/julia-vim'
call vundle#end()            " required
filetype plugin indent on    " required

" Dracula Theme
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro
let g:dracula_italic = 0

" Autosave
let g:auto_save = 1

" Vim Functionality
set backspace=2
set mouse=a
set scrolloff=3
set number
set ruler
set tabstop=4
set visualbell
set cursorline
set clipboard=unnamed
let mapleader = ","

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_exclude_preview=1
let g:airline_theme='dracula'

" NerdTree Settings
map <C-e> :NERDTreeToggle<CR>

" iSlime2 Settings
let g:islime2_29_mode=1
" Send current line
nnoremap <silent> <Leader>i<CR> :ISlime2CurrentLine<CR>

" Move to next line then send it
nnoremap <silent> <Leader>ij :ISlime2NextLine<CR>

" Move to previous line then send it
nnoremap <silent> <Leader>ik :ISlime2PreviousLine<CR>

" Send in/around text object - operation pending
nnoremap <silent> <Leader>i :set opfunc=islime2#iTermSendOperator<CR>g@

" Send visual selection
vnoremap <silent> <Leader>i :<C-u>call islime2#iTermSendOperator(visualmode(), 1)<CR>

set belloff=all

