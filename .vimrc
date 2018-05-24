call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
call plug#end()

if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

nnoremap ,<space> :nohlsearch<CR>
inoremap jk <Esc>
inoremap kj <Esc>

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:airline_theme='one'
let g:one_allow_italics = 1 " I love italic for comments
let g:airline_powerline_fonts = 1
colorscheme one
set background=dark
set backspace=2
syntax enable " enable syntax processing
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " tabs are spaces
set smarttab
set autoindent
set smartindent
set number " show line numbers
set cursorline " highlight current line
filetype indent on " load filetype-specific indent file
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set encoding=utf8

if has("gui_running")
  if g:os == "Darwin"
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h12
  elseif g:os == "Linux"
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
  elseif g:os == "Windows"
    " Windows config
  endif
endif

" abbreviations
inoremap psv public static void main(String[] args) {<CR>}<Esc>O<TAB>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O<TAB>


