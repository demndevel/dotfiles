" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If yot
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
" let skip_defaults_vim=1
" install plugins at ~/.local/share/nvim/site/autoload
" for clipboard: sudo pacman -S xclip

" Plugins
" please run curl -fLo ~/.config/nvim/plug.vim --create-dirs \
"  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" before the run
set rtp +=~/.vim
set rtp +=~/.config/nvim

call plug#begin()
Plug 'preservim/nerdtree'            " Project and file navigation
Plug 'ellisonleao/glow.nvim'    " markdown support
Plug 'morhetz/gruvbox'
" Plug 'fatih/vim-go'                  " Go autocomplete
call plug#end()

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

" Theme gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

" Neovide
let g:neovide_cursor_animation_length=0.02

set clipboard+=unnamedplus

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set foldcolumn=1
syntax on

set ignorecase
set smartcase
set hlsearch

set encoding=utf8

" Nerdtree shortcuts

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
