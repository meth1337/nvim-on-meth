:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'tribela/vim-transparent'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
cal plug#end()

:set completeopt-=preview

nnoremap <C-f> :NERDTree<CR>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-z> u<CR>
nnoremap <C-e> :q<CR>
nnoremap <C-s> :w<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction 

let g:airline_theme='minimalist'
let t:is_transparent = 1
:colorscheme 256_noir

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


