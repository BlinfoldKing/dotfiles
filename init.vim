
set tabstop=4
set nu
set rnu
set splitbelow
set splitbelow
set splitright
map <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nnoremap tt :NERDTreeToggle<CR>  
inoremap jj <Esc>
set colorcolumn=80
function! g:ToggleNuMode()
	if &rnu == 1
		set nornu
	else
		set rnu
  	endif
endfunction
colorscheme wal
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>
nnoremap <silent><C-T> :Term <cr>

let g:minimap_highlight='Visual'

call plug#begin('~/.vim/plugged')
	
	Plug 'racer-rust/vim-racer'
	Plug 'scrooloose/nerdtree'
	Plug 'vimlab/split-term.vim'
	Plug 'mattn/emmet-vim'
	Plug 'kien/ctrlp.vim'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'airblade/vim-gitgutter'
	Plug 'valloric/youcompleteme'
	Plug 'dylanaraps/wal.vim'
	Plug 'severin-lemaignan/vim-minimap'

call plug#end()
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1
