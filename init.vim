set nu
set rnu
set cursorline
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
map <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nnoremap tt :NERDTreeToggle<CR>  
inoremap jj <Esc>
nnoremap <silent><C-P> :Denite file <cr>
set colorcolumn=80
function! g:ToggleNuMode()
	if &rnu == 1
		set nornu
	else
		set rnu
  	endif
endfunction

nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>
nnoremap <silent><C-T> :Term <cr>

let g:minimap_highlight='Visual'

syntax on
colorscheme molokai
let g:onedark_termcolors=256
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
let deoplete#enable_at_startup = 1
highlight Comment cterm=italic
highlight Comment gui=italic

set encoding=UTF-8

call plug#begin('~/.vim/plugged')
    
    Plug 'arcticicestudio/nord-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'atelierbram/Base2Tone-vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'sbdchd/neoformat'	
	Plug 'skielbasa/vim-material-monokai'
	Plug 'dunckr/vim-monokai-soda'
	Plug 'maksimr/vim-jsbeautify'
	Plug 'mxw/vim-jsx'
	Plug 'rhysd/vim-clang-format'
	Plug 'tpope/vim-commentary'
	Plug 'ervandew/supertab'
	Plug 'vim-scripts/sudo.vim'
	Plug 'jamshedvesuna/vim-markdown-preview'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'zchee/deoplete-jedi'	
	Plug 'carlitux/deoplete-ternjs'	
	Plug 'ryanoasis/vim-devicons'
	Plug 'sebastianmarkow/deoplete-rust'
	Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'joshdick/onedark.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'vimlab/split-term.vim'
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'severin-lemaignan/vim-minimap'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1
" let g:airline_theme='nord'
" let g:nord_italic_comments = 1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let g:deoplete#sources#rust#racer_binary='/home/blinfoldking/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/blinfoldking/rust/src'

let deoplete#sources#rust#documentation_max_height=20
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:deoplete#sources#ternjs#tern_bin = '/home/blinfoldking/.nvm/versions/node/v10.9.0/bin/ternjs'
